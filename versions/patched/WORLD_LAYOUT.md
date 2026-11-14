# World layout — original 1.0 / repaired 1.0

All coordinates below are relative to the position where
`/function dblobby:generate` is executed. The command position is the center
reference for the lobby; choose a broad, open test area.

```text
                         NORTH (-Z)
                 Kami's Lookout / tower
                       (Z +92 to +188)

 WEST (-X)                                        EAST (+X)
 Kame House           CENTRAL SPAWN              Tournament Arena
 island               plaza                      (X +65 to +205)
 (X -202 to -62)      (origin)

 Capsule Corporation                         Shenron Valley
 city                                        (X +72 to +214,
 (Z -202 to -63)                              Z -208 to -66)
                         SOUTH (+Z)
```

## Region footprints

| Region | Approximate relative footprint |
| --- | --- |
| Central spawn, floating Dragon Ball, and four corner gardens | X/Z -118 to +118 (plaza core approximately -38 to +38) |
| Capsule City | X -83 to +83, Z -202 to -63 |
| Tournament | X +65 to +205, Z -70 to +70 |
| Kame House | X -202 to -62, Z -62 to +62 |
| Kami's Lookout | X -45 to +47, Z +91 to +188 |
| Shenron Valley | X +72 to +214, Z -208 to -66 |
| Roads and waypoints | Main cardinal roads extending to about 118 blocks |

These are approximate bounding boxes inferred from the function coordinates,
not a promise that every block inside the box is filled.

## Generation precautions

- Make a fresh world or a complete backup first.
- Find a large, mostly empty area. The map covers several hundred blocks.
- Ensure there is vertical clearance for the lookout and tall structures.
- Avoid running the generator a second time over player builds.
- The generator currently runs all ten regions in one function call. The four cherry-tree planters sit diagonally inside the central plaza, away from the cardinal roads and the center arrival pad. A floating orange-glass Dragon Ball sits above the arrival pad, beginning at Y +8 so the ground-level spawn remains clear. The four gateway caps are color-coded to match the existing district road markers: north blue, east red, west pink, and south yellow.
- The repaired pack has static validation and ZIP packaging in GitHub Actions,
  but still needs a real Minecraft 1.21.1 in-game visual test.
