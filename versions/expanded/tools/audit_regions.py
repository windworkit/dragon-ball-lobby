#!/usr/bin/env python3
"""Report measured command bounds for each repaired lobby region."""
from __future__ import annotations

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2] / "patched"
REGIONS = ROOT / "data" / "dblobby" / "function" / "regions"
COORD = re.compile(r"^~?(-?\d+)?$")


def number(token: str) -> int:
    match = COORD.fullmatch(token)
    if not match:
        raise ValueError(f"unsupported coordinate {token!r}")
    return int(match.group(1) or 0)


def main() -> int:
    failed = False
    print("Measured relative command bounds (origin = generator execution position)")
    for path in sorted(REGIONS.glob("*.mcfunction")):
        points: list[tuple[int, int, int]] = []
        fill_count = 0
        setblock_count = 0
        max_fill = 0
        errors: list[str] = []
        for line_no, raw in enumerate(path.read_text(encoding="utf-8").splitlines(), 1):
            parts = raw.strip().split()
            if not parts or parts[0].startswith("#"):
                continue
            try:
                if parts[0] == "fill":
                    if len(parts) < 8:
                        raise ValueError("incomplete fill command")
                    a = tuple(number(v) for v in parts[1:4])
                    b = tuple(number(v) for v in parts[4:7])
                    points.extend((a, b))
                    volume = 1
                    for low, high in zip(a, b):
                        volume *= abs(high - low) + 1
                    max_fill = max(max_fill, volume)
                    fill_count += 1
                    if volume > 32768:
                        errors.append(f"line {line_no}: fill volume {volume} exceeds 32768")
                elif parts[0] == "setblock":
                    if len(parts) < 5:
                        raise ValueError("incomplete setblock command")
                    points.append(tuple(number(v) for v in parts[1:4]))
                    setblock_count += 1
            except ValueError as exc:
                errors.append(f"line {line_no}: {exc}")
        if points:
            mins = tuple(min(p[i] for p in points) for i in range(3))
            maxs = tuple(max(p[i] for p in points) for i in range(3))
            bounds = " ".join(f"{axis} {lo}..{hi}" for axis, lo, hi in zip("XYZ", mins, maxs))
        else:
            bounds = "no recognized block placements"
        print(f"{path.stem}: {bounds}; fills={fill_count}; setblocks={setblock_count}; largest_fill={max_fill}")
        for error in errors:
            print(f"  ERROR: {error}")
            failed = True
    if not list(REGIONS.glob("*.mcfunction")):
        print(f"ERROR: no region functions found at {REGIONS}")
        return 1
    print("NOTE: bounds include command endpoints, not a guarantee that every block inside the box is occupied.")
    print("NOTE: this is a source audit; it does not render or test the lobby in Minecraft.")
    return 1 if failed else 0


if __name__ == "__main__":
    raise SystemExit(main())
