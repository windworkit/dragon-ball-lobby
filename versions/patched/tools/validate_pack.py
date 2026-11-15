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
    "central_spawn", "plaza_art_direction", "hub_architecture_finish", "plaza_orbital_finish", "plaza_npc_station_finish", "plaza_social_courts_finish", "capsule_city_finish", "capsule_hq_facade_finish", "capsule_city_civic_finish", "capsule_satellite_courts", "capsule_neighborhood_finish", "capsule_hq_dome", "capsule_city_satellites", "tournament_arrival_finish", "tournament_venue_finish", "tournament_spectator_finish", "tournament_arena_rebuild", "tournament_exterior_finish", "tournament_concourse_finish", "kame_house_finish", "kame_training_pavilion", "kame_house_complete_rebuild", "kame_beach_cabana_finish", "kame_training_garden_finish", "kame_island_shoreline", "kamis_lookout_complete_rebuild", "kamis_lookout_courtyard_finish", "kamis_lookout_side_sanctuary_finish", "kamis_lookout_legacy_clear", "korins_tower_complete_rebuild", "korin_crown_interior_finish", "plaza_social_courts", "plaza_compass_inlay", "gateway_threshold_details", "district_approach_lighting", "district_route_finish", "district_gateway_crests", "capsule_city_arrival", "kame_island_arrival", "capsule_city", "tournament", "kame_house",
     "shenron_valley", "shenron_valley_terrain_finish", "roads_and_waypoints", "plaza_gardens", "plaza_dragon_ball", "plaza_gate_accents", "capsule_boulevard_lighting", "tournament_seating", "kame_dock_details", "shenron_viewing_terrace", "shenron_valley_garden", "shenron_visitor_finish", "shenron_valley_entry_gate",
    "shenron_giant_form", "shenron_epic_rebuild", "shenron_anatomy_finish", "shenron_forelimb_finish", "shenron_valley_access", "shenron_sculpture_finish", 
    "capsule_city_detail", "tournament_stadium_detail", "kame_island_detail",
    "capsule_hq_interior",
    "shenron_surface_detail", "spawn_rotunda", "hub_guide_pavilion", "plaza_npc_stations",
}
FUNCTION_REF = re.compile(r"^function\s+([a-z0-9_.-]+:[a-z0-9_./-]+)\s*$")
FILL = re.compile(
    r"^fill\s+(\S+)\s+(\S+)\s+(\S+)\s+"
    r"(\S+)\s+(\S+)\s+(\S+)\s+(\S+)(?:\s+.*)?$"
)
BLOCK_STATE = re.compile(r"minecraft:([a-z0-9_]+)(?:\[([^\]]+)\])?")


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

    if not (FUNCTION_ROOT / "hub.mcfunction").is_file():
        errors.append("missing player guide function: hub.mcfunction")

    generator = FUNCTION_ROOT / "generate.mcfunction"
    if not generator.is_file():
        errors.append("missing core function: generate.mcfunction")
    else:
        generator_text = generator.read_text(encoding="utf-8")
        for region in sorted(EXPECTED_REGIONS):
            reference = f"function dblobby:regions/{region}"
            if reference not in generator_text:
                errors.append(f"generate.mcfunction: missing call to {reference}")

    block_manifest: dict[str, dict[str, list[str]]] = {}
    try:
        manifest_path = ROOT / "tools" / "vanilla_blocks_1_21_1.json"
        manifest = json.loads(manifest_path.read_text(encoding="utf-8"))
        if manifest.get("minecraft_version") != "1.21.1":
            errors.append("vanilla block manifest: expected Minecraft 1.21.1")
        if not isinstance(manifest.get("blocks"), dict):
            errors.append("vanilla block manifest: 'blocks' must be an object")
        else:
            block_manifest = manifest["blocks"]
    except (OSError, json.JSONDecodeError, TypeError) as exc:
        errors.append(f"vanilla block manifest: unavailable or invalid ({exc})")

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
            if line.startswith("execute ") and " run function " in line:
                target = line.rsplit(" run function ", 1)[1]
                ref = FUNCTION_REF.match("function " + target)
                if not ref:
                    errors.append(f"{path}:{number}: malformed execute/run function command")
                elif ref.group(1) not in known:
                    errors.append(f"{path}:{number}: missing function {ref.group(1)}")
            if line.startswith(("fill ", "setblock ")):
                block_match = BLOCK_STATE.search(line)
                if not block_match:
                    errors.append(f"{path.relative_to(ROOT)}:{number}: missing namespaced block ID")
                else:
                    block_id, state_text = block_match.groups()
                    if block_id not in block_manifest:
                        errors.append(
                            f"{path.relative_to(ROOT)}:{number}: unknown Minecraft 1.21.1 block "
                            f"minecraft:{block_id}"
                        )
                    elif state_text:
                        valid_states = block_manifest[block_id]
                        for state in state_text.split(","):
                            if "=" not in state:
                                errors.append(
                                    f"{path.relative_to(ROOT)}:{number}: malformed block state {state!r}"
                                )
                                continue
                            state_name, state_value = state.split("=", 1)
                            if state_name not in valid_states:
                                errors.append(
                                    f"{path.relative_to(ROOT)}:{number}: minecraft:{block_id} "
                                    f"has no state {state_name!r}"
                                )
                            elif valid_states[state_name] and state_value not in valid_states[state_name]:
                                errors.append(
                                    f"{path.relative_to(ROOT)}:{number}: invalid value {state_value!r} "
                                    f"for minecraft:{block_id}[{state_name}]"
                                )

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
    print("PASS: required regions, JSON, pack format, function references, block IDs, and block states are valid.")
    print("PASS: all fill commands are within Minecraft's 32,768-block limit.")
    print("NOTE: static checks do not replace an in-game test.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
