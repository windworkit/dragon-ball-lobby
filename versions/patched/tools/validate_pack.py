#!/usr/bin/env python3
"""Static safety checks for the repaired Dragon Ball Lobby datapack."""
from __future__ import annotations

import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
FUNCTION_ROOT = ROOT / "data" / "dblobby" / "function"
MAX_FILL_BLOCKS = 32_768
EXPECTED_REGIONS = {
    "central_spawn", "capsule_city", "tournament", "kame_house",
    "kamis_lookout", "lookout_sanctuary_details", "shenron_valley", "roads_and_waypoints", "plaza_gardens", "plaza_dragon_ball", "plaza_gate_accents", "capsule_boulevard_lighting", "capsule_hq_entrance", "tournament_seating", "kame_dock_details",
}
FUNCTION_REF = re.compile(r"^function\s+([a-z0-9_.-]+:[a-z0-9_./-]+)\s*$")
FILL = re.compile(
    r"^fill\s+(\S+)\s+(\S+)\s+(\S+)\s+"
    r"(\S+)\s+(\S+)\s+(\S+)\s+(\S+)(?:\s+.*)?$"
)


def coordinate(token: str) -> int:
    """Resolve a block coordinate's numeric component for relative fills."""
    if token.startswith("~"):
        token = token[1:]
    if token == "":
        return 0
    return int(token)


def main() -> int:
    errors: list[str] = []
    functions = sorted(FUNCTION_ROOT.rglob("*.mcfunction"))
    known = {
        "dblobby:" + p.relative_to(FUNCTION_ROOT).with_suffix("").as_posix()
        for p in functions
    }

    actual_regions = {
        p.stem for p in (FUNCTION_ROOT / "regions").glob("*.mcfunction")
    }
    missing_regions = sorted(EXPECTED_REGIONS - actual_regions)
    extra_regions = sorted(actual_regions - EXPECTED_REGIONS)
    if missing_regions:
        errors.append("missing required region functions: " + ", ".join(missing_regions))
    if extra_regions:
        print("INFO: additional region functions: " + ", ".join(extra_regions))

    generator = FUNCTION_ROOT / "generate.mcfunction"
    if not generator.is_file():
        errors.append("missing core function: generate.mcfunction")
    else:
        generator_text = generator.read_text(encoding="utf-8")
        for region in sorted(EXPECTED_REGIONS):
            reference = f"function dblobby:regions/{region}"
            if reference not in generator_text:
                errors.append(f"generate.mcfunction: missing call to {reference}")

    for path in functions:
        for number, raw_line in enumerate(path.read_text(encoding="utf-8").splitlines(), 1):
            line = raw_line.strip()
            if not line or line.startswith("#"):
                continue
            if line.startswith("function "):
                ref = FUNCTION_REF.match(line)
                if not ref:
                    errors.append(f"{path}:{number}: malformed function command")
                elif ref.group(1) not in known:
                    errors.append(f"{path}:{number}: missing function {ref.group(1)}")
            if line.startswith("fill "):
                match = FILL.match(line)
                if not match:
                    errors.append(f"{path}:{number}: cannot parse fill command")
                    continue
                try:
                    xyz = [coordinate(v) for v in match.groups()[:6]]
                except ValueError:
                    errors.append(f"{path}:{number}: non-integer fill coordinate")
                    continue
                volume = 1
                for low, high in zip(xyz[:3], xyz[3:]):
                    volume *= abs(high - low) + 1
                if volume > MAX_FILL_BLOCKS:
                    errors.append(
                        f"{path.relative_to(ROOT)}:{number}: fill volume {volume} "
                        f"exceeds {MAX_FILL_BLOCKS}"
                    )

    try:
        metadata = json.loads((ROOT / "pack.mcmeta").read_text(encoding="utf-8"))
        pack_format = metadata["pack"]["pack_format"]
        if pack_format != 48:
            errors.append(f"pack.mcmeta: expected pack_format 48 for Java 1.21.1, got {pack_format}")
    except (OSError, json.JSONDecodeError, KeyError, TypeError) as exc:
        errors.append(f"pack.mcmeta: invalid metadata ({exc})")

    try:
        load_tag = json.loads(
            (ROOT / "data/minecraft/tags/function/load.json").read_text(encoding="utf-8")
        )
        values = load_tag["values"]
        if not isinstance(values, list):
            errors.append("load.json: 'values' must be a list")
        else:
            for value in values:
                if not isinstance(value, str) or value not in known:
                    errors.append(f"load.json: unresolved load function {value!r}")
    except (OSError, json.JSONDecodeError, KeyError, TypeError) as exc:
        errors.append(f"load.json: invalid function tag ({exc})")

    print(f"Scanned {len(functions)} function files.")
    print(f"Found {len(actual_regions)} of {len(EXPECTED_REGIONS)} required region functions.")
    if errors:
        print(f"FAILED: {len(errors)} issue(s)")
        print("\n".join(errors))
        return 1
    print("PASS: required regions, JSON, pack format, and function references are valid.")
    print("PASS: all fill commands are within Minecraft's 32,768-block limit.")
    print("NOTE: static checks do not replace an in-game test.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
