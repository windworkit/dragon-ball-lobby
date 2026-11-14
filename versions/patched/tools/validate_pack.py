#!/usr/bin/env python3
"""Static safety checks for the recovered Dragon Ball Lobby 1.0 datapack."""
from __future__ import annotations

import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
FUNCTION_ROOT = ROOT / "data" / "dblobby" / "function"
MAX_FILL_BLOCKS = 32_768
FUNCTION_REF = re.compile(r"^function\s+([a-z0-9_.-]+:[a-z0-9_./-]+)\s*$")
FILL = re.compile(r"^fill\s+(\S+)\s+(\S+)\s+(\S+)\s+(\S+)\s+(\S+)\s+(\S+)\s+(\S+)(?:\s+.*)?$")


def coordinate(token: str) -> int:
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

    for path in functions:
        for number, line in enumerate(path.read_text(encoding="utf-8").splitlines(), 1):
            line = line.strip()
            if not line or line.startswith("#"):
                continue
            ref = FUNCTION_REF.match(line)
            if ref and ref.group(1) not in known:
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

    for rel in ("pack.mcmeta", "data/minecraft/tags/function/load.json"):
        try:
            json.loads((ROOT / rel).read_text(encoding="utf-8"))
        except (OSError, json.JSONDecodeError) as exc:
            errors.append(f"{rel}: invalid or unreadable JSON ({exc})")

    print(f"Scanned {len(functions)} function files.")
    if errors:
        print(f"FAILED: {len(errors)} issue(s)")
        print("\n".join(errors))
        return 1
    print("PASS: JSON parses and all function references resolve.")
    print("PASS: all fill commands are within Minecraft's 32,768-block limit.")
    print("NOTE: static checks do not replace an in-game test.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
