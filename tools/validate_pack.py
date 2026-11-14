from pathlib import Path
import json
import sys

ROOT = Path(__file__).resolve().parents[1] / "datapack"
errors = []
meta = ROOT / "pack.mcmeta"
if not meta.exists():
    errors.append("Missing datapack/pack.mcmeta")
else:
    try:
        data = json.loads(meta.read_text(encoding="utf-8"))
        if data.get("pack", {}).get("pack_format") != 48:
            errors.append("Expected pack_format 48 for Minecraft 1.21.1")
    except Exception as exc:
        errors.append(f"Invalid pack.mcmeta: {exc}")

load_tag = ROOT / "data/minecraft/tags/function/load.json"
if not load_tag.exists():
    errors.append("Missing minecraft:load function tag")
else:
    try:
        tag = json.loads(load_tag.read_text(encoding="utf-8"))
        for value in tag.get("values", []):
            namespace, name = value.split(":", 1)
            target = ROOT / "data" / namespace / "function" / f"{name}.mcfunction"
            if not target.exists():
                errors.append(f"Load tag points to missing function: {value}")
    except Exception as exc:
        errors.append(f"Invalid load tag JSON: {exc}")

functions = list((ROOT / "data/dblobby/function").glob("*.mcfunction"))
if not functions:
    errors.append("No dblobby functions found")
for path in functions:
    for number, raw in enumerate(path.read_text(encoding="utf-8").splitlines(), 1):
        line = raw.strip()
        if not line or line.startswith("#"):
            continue
        if line.startswith("fill "):
            parts = line.split()
            try:
                coords = [int(p[1:]) for p in parts[1:7]]
                dx = abs(coords[3] - coords[0]) + 1
                dy = abs(coords[4] - coords[1]) + 1
                dz = abs(coords[5] - coords[2]) + 1
                volume = dx * dy * dz
                if volume > 32768:
                    errors.append(f"{path.name}:{number}: fill volume {volume} exceeds 32768")
            except Exception:
                errors.append(f"{path.name}:{number}: could not validate fill coordinates")
        if line.startswith("function dblobby:"):
            target = line.split(":", 1)[1]
            if not (path.parent / f"{target}.mcfunction").exists():
                errors.append(f"{path.name}:{number}: missing function target {target}")

if errors:
    print("\n".join(errors))
    sys.exit(1)
print(f"Validated {len(functions)} functions. No structural or fill-volume errors found.")
