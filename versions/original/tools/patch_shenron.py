#!/usr/bin/env python3
"""Create a patched Shenron Valley function without changing the recovered original."""
from __future__ import annotations

import argparse
from pathlib import Path

ORIGINAL = [
    "fill ~82 ~0 ~-197 ~204 ~7 ~-77 minecraft:stone",
    "fill ~90 ~8 ~-188 ~196 ~15 ~-86 minecraft:stone",
    "fill ~100 ~16 ~-178 ~186 ~23 ~-96 minecraft:deepslate_bricks",
]

REPLACEMENT = [
    "fill ~82 ~0 ~-197 ~112 ~7 ~-77 minecraft:stone",
    "fill ~113 ~0 ~-197 ~143 ~7 ~-77 minecraft:stone",
    "fill ~144 ~0 ~-197 ~174 ~7 ~-77 minecraft:stone",
    "fill ~175 ~0 ~-197 ~204 ~7 ~-77 minecraft:stone",
    "fill ~90 ~8 ~-188 ~125 ~15 ~-86 minecraft:stone",
    "fill ~126 ~8 ~-188 ~161 ~15 ~-86 minecraft:stone",
    "fill ~162 ~8 ~-188 ~196 ~15 ~-86 minecraft:stone",
    "fill ~100 ~16 ~-178 ~143 ~23 ~-96 minecraft:deepslate_bricks",
    "fill ~144 ~16 ~-178 ~186 ~23 ~-96 minecraft:deepslate_bricks",
]


def volume(line: str) -> int:
    parts = line.split()
    coords = [int(value[1:]) if value.startswith("~") else int(value) for value in parts[1:7]]
    result = 1
    for low, high in zip(coords[:3], coords[3:]):
        result *= abs(high - low) + 1
    return result


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--source",
        type=Path,
        default=Path("versions/original/data/dblobby/function/regions/shenron_valley.mcfunction"),
    )
    parser.add_argument(
        "--output",
        type=Path,
        default=Path("versions/patched/data/dblobby/function/regions/shenron_valley.mcfunction"),
    )
    args = parser.parse_args()

    source_text = args.source.read_text(encoding="utf-8")
    lines = source_text.splitlines()
    if lines[:3] != ORIGINAL:
        raise SystemExit("Source does not match the expected original 1.0 first three commands; refusing to patch.")

    if any(volume(line) > 32_768 for line in REPLACEMENT):
        raise SystemExit("Internal patch error: a replacement fill still exceeds 32,768 blocks.")

    patched = "\n".join(REPLACEMENT + lines[3:]) + ("\n" if source_text.endswith("\n") else "")
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(patched, encoding="utf-8", newline="\n")
    print(f"Wrote patched function: {args.output}")
    print("Original source was not modified.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
