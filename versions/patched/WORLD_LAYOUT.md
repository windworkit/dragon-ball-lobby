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
| Lookout upper-deck details | East training court X +17..+31, Z +131..+147; west meditation garden X -31..-17, Z +131..+147; four corner lights at the platform edges |
| Shenron Valley | X +72 to +214, Z -208 to -66 |
| Roads and waypoints | Main cardinal roads extending to about 118 blocks |

These are approximate bounding boxes inferred from the function coordinates,
not a promise that every block inside the box is filled.

## Central plaza detail coordinates

These are exact command footprints for the new decorative pass, relative to
the same generation origin:

| Detail | Relative footprint | Notes |
| --- | --- | --- |
| Northwest garden | X -35..-21, Z -35..-21, Y 1..8 | Cherry tree, moss planter, flowers |
| Northeast garden | X 21..35, Z -35..-21, Y 1..8 | Mirrored garden |
| Southwest garden | X -35..-21, Z 21..35, Y 1..8 | Mirrored garden |
| Southeast garden | X 21..35, Z 21..35, Y 1..8 | Mirrored garden |
| Dragon Ball orb | X/Z -3..3, Y 8..14 | Layered orange glass; south-facing one-star motif |
| North gateway cap | X -3..3, Z -38..-32, Y 12 | Blue |
| East gateway cap | X 32..38, Z -3..3, Y 12 | Red |
| West gateway cap | X -38..-32, Z -3..3, Y 12 | Pink |
| South gateway cap | X -3..3, Z 32..38, Y 12 | Yellow |

The existing generator sets the player's spawn point at Y +3. The Dragon Ball
starts at Y +8, leaving the ground-level arrival area open. The gardens are
placed in the plaza's diagonal corners; the four cardinal approach lanes remain
clear at ground level. Visual clearance and multiplayer crowding still require
an in-game test.

## New district-detail footprints

| Detail | Relative footprint | Purpose |
| --- | --- | --- |
| Capsule boulevard lamps | X -26..-22 and 22..26; Z -182..-80 | Ten matching quartz-and-light-blue street lamps with sea-lantern cores |
| Capsule HQ entrance | X -19..+19, Z -152..-137, Y 1..12 | Centered south-facing doorway, quartz-and-blue entrance frame, forecourt steps, paired lamps, and low planters |
| Tournament north seating | X 101..169; Z -37..-26; Y 2..5 | Four stepped spectator rows |
| Tournament south seating | X 101..169; Z 26..37; Y 2..5 | Matching four stepped spectator rows |
| Tournament corner pylons | X 98..100 and 170..172; Z -38..-36 and 36..38; Y 2..8 | Four illuminated seating-entry markers |

The Capsule boulevard lamps are placed in the open strips outside the central
headquarters and existing side buildings. Tournament seating occupies the
space between the central ring and the existing perimeter wall. Exact sightlines
and player access still need in-game review.

## Kame House dock extension

| Detail | Relative footprint | Purpose |
| --- | --- | --- |
| Pier deck | X -141..-131, Z 42..57, Y -2 | Extends the existing oak dock into the water |
| Support piles | X -140/-132, Z 44/54, Y -5..-2 | Four dark-oak structural piles |
| Side rails | X -140 and -132, Z 45..53, Y -1 | Low fence rails |
| Pier lanterns | X -140/-132, Z 55, Y 2 | Two lantern posts at the outer landing |

The extension deliberately overlaps the end of the original dock to form one
continuous pier. Check the shoreline and waterline in-game before using it in
a populated world.

## Generation precautions

- Make a fresh world or a complete backup first.
- Find a large, mostly empty area. The map covers several hundred blocks.
- Ensure there is vertical clearance for the lookout and tall structures.
- Avoid running the generator a second time over player builds.
- The generator currently runs all fourteen regions in one function call. The four cherry-tree planters sit diagonally inside the central plaza, away from the cardinal roads and the center arrival pad. A floating orange-glass Dragon Ball sits above the arrival pad, beginning at Y +8 so the ground-level spawn remains clear. The four gateway caps are color-coded to match the existing district road markers: north blue, east red, west pink, and south yellow.
- The lookout training court, garden, and corner lights sit on the existing Y+28 deck, outside the central palace footprint. Exact appearance and collision still need in-game review.
- The repaired pack has static validation and ZIP packaging in GitHub Actions,
  but still needs a real Minecraft 1.21.1 in-game visual test.
