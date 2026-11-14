# World layout — original 1.0 / repaired 1.0

All coordinates below are relative to the position where
`/function dblobby:generate` is executed. The command position is the center
reference for the lobby; choose a broad, open test area.

```text
                         NORTH (-Z)
                 CAPSULE CORPORATION CITY
                    (Z -202 to -63)

WEST (-X)                                           EAST (+X)
KAME HOUSE ISLAND       CENTRAL SPAWN              WORLD TOURNAMENT
(X -202 to -62)            (origin)                (X +65 to +205)

KORIN'S TOWER                                      SHENRON VALLEY
(X -184..-126,                                      (X +72..+233,
 Z +126..+184)                                       Z -208..-66)

                         SOUTH (+Z)
                    KAMI'S LOOKOUT
                    (Z +91 to +188)
```

## Region footprints

| Region | Approximate relative footprint |
| --- | --- |
| Central spawn, floating Dragon Ball, and four corner gardens | X/Z -118 to +118 (plaza core approximately -38 to +38) |
| Capsule City | X -83 to +83, Z -202 to -63 |
| Tournament | X +65 to +205, Z -70 to +70 |
| Kame House | X -202 to -62, Z -62 to +62 |
| Kami's Lookout | X -46 to +46, Z +91 to +188; palace reaches Y +60 |
| Korin's Tower | X -184 to -126, Z +126 to +184; base Y -32, summit pavilion Y +102..+145 |
| Lookout upper-deck details | East training court X +17..+31, Z +131..+147; west meditation garden X -31..-17, Z +131..+147; four corner lights at the platform edges |
| Shenron Valley | X +72 to +233, Z -208 to -66; giant raised Shenron reaches approximately Y +90 |
| Roads and waypoints | Main cardinal roads extending to about 118 blocks |

These are approximate bounding boxes inferred from the function coordinates,
not a promise that every block inside the box is filled.

## District gateways and guide pavilion

The four gateway arches are centered on the cardinal roads at approximately 45 blocks from spawn. Their piers sit outside the five-wide walking lane; the centerline is kept clear. North is blue for Capsule City, east red for the World Tournament, west pink for Kame House, and south yellow for Kami's Lookout. Shenron Valley branches into the northeast city region; Korin's Tower occupies the southwest beyond Kame House.

The information pavilion sits beside the north road at X +12..+30, Z -59..-40, Y -1..+8. It contains a covered counter, lectern/cartography station, light-blue glazing, and a simple Dragon Ball color motif. It is deliberately outside the road corridor. `/function dblobby:hub` remains the reliable text guide.

## Central hub rotunda

| Detail | Relative footprint | Purpose |
| --- | --- | --- |
| Four crown columns | X/Z -18..-13 and +13..+18, Y +1..+17 | Tall quartz supports with gold collars and illuminated caps, framing the arrival pad. |
| Open crown roof | X/Z -18..+18, Y +18..+19 | Four roof wings form a square canopy with an 11x11 center aperture, keeping the floating Dragon Ball visible. |
| Crown spires | Four corner positions, Y +20..+25 | Short illuminated spires establish a recognizable central hub skyline. |
| Seating bays | X -12..-7 and +7..+12, Z -12..-10 and +10..+12, Y +1 | Low dark-oak benches around the central walking ring. |
| Compass medallions | Four cardinal points, X/Z 27..31 or -31..-27, Y +1..+2 | Color-coded floor markers reinforce the four district routes. |

The rotunda is intentionally open-air and elevated above the player route. Its center roof aperture preserves a clear view of the Dragon Ball. Use `/function dblobby:hub` in-game for the player-facing district guide; `/function dblobby:help` remains the builder command list.

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
headquarters and existing side buildings. The HQ entrance detail opens a centered
passage through the existing south wall and builds its forecourt immediately
outside; inspect the doorway and threshold in-game before relying on it. Tournament seating occupies the
space between the central ring and the existing perimeter wall. Exact sightlines
and player access still need in-game review.

## Second-pass district details

| Detail | Relative footprint | Purpose |
| --- | --- | --- |
| Capsule City streetscape | X -76..+76, Z -185..-73, Y 0..19 | Adds smaller residential and workshop blocks, rooftop planting, boulevard pylons, and HQ forecourt lighting. |
| Tournament stadium expansion | X +77..+193, Z -61..+61, Y 1..21 | Adds an outer concourse, upper spectator tiers, roofline canopy wings, corner pylons, and three entry portals. The central ring remains uncovered. |
| Kame House island detail | X -198..-81, Z -40..+41, Y -4..+9 | Adds beach pathing, palm trees, umbrellas, a training garden, outdoor seating, and shoreline lighting. |

These additions are a first visual-detail pass. The stadium canopy is intentionally limited to the perimeter so the fighting ring remains visible from above. Check for overlaps with the existing district shells and confirm the new ground-level routes in-game.

## Landmark interiors and vertical access

| Detail | Relative footprint | Purpose |
| --- | --- | --- |
| Capsule Corp HQ interior | X -15..+15, Z -173..-153, Y +3..+18 | Reception desk, waiting benches, research pods, wall consoles, and ceiling lights inside the headquarters shell. |
| Kame House interior | X -149..-121, Z -13..+13, Y -1..+4 | Living room, kitchen counter, dining area, bedroom nook, display wall, and warm lighting. |
| Kami's Lookout interior | X -15..+15, Z +124..+153, Y +32..+43 | Ceremonial hall, column pairs, raised dais, meditation pools, alcove benches, and lighting. |
| Korin's Tower access | X -159..-151, Z +151..+159, Y -18..+103 | Vertical ladder shaft with reinforced walls and rest platforms at regular intervals, opening into the summit pavilion. |

These are first-pass functional interiors. The Korin shaft is a ladder-based climb rather than a fully modeled spiral staircase; confirm ladder attachment, floor openings, and summit arrival in-game. Interior furnishings are decorative block approximations, not modded furniture.

## Latest landmark refinement

| Detail | Relative footprint | Purpose |
| --- | --- | --- |
| Shenron surface detail | X +98..+235, Z -172..-114, Y +48..+90 | Adds repeated scale bands, gold belly segmentation, dorsal spines, brow ridges, cheek plates, and stepped whisker curls to the raised dragon. |
| Kami's Lookout tower access | X -5..+5, Z +97..+116, Y +1..+30 | Opens a ladder shaft through the tower and adds a narrow railed sky bridge to the palace stairs. |

The new tower access is a first functional route, not a final architectural staircase. The Shenron surface pass is block-art detailing; inspect its face orientation and scale placement from the viewing terrace in-game.

## Shenron Valley viewing terrace

| Detail | Relative footprint | Purpose |
| --- | --- | --- |
| Visitor deck | X +118..+180, Z -103..-82, Y +31 | Broad smooth-stone viewing platform south of the dragon display |
| Approach tongue | X +145..+153, Z -108..-104, Y +31 | Connects the existing moss display edge to the terrace |
| Side and rear rails | West/east edges and south edge, Y +32..+33 | Low stone-brick and spruce-fence safety rails; north-facing view stays open |
| Seating bays | X +132..+140 and +158..+166, Z -96 and -90, Y +32 | Four short dark-oak stair benches with a clear central aisle |
| Lantern columns | X +123/+175, Z -99/-86, Y +32..+37 | Four quartz pillars with sea-lantern caps |

The terrace is a first-pass visitor stop placed south of the seven Dragon Ball
pedestals and the Shenron sculpture. The deck is intended to sit level with the
existing moss display shelf. Verify the approach transition, rail collision,
bench orientation, and northward sightline in-game.


## Shenron Valley approach gardens

| Detail | Relative footprint | Purpose |
| --- | --- | --- |
| Central approach path | X +145..+153, Z -117..-109, Y +31 | Polished-andesite route kept clear between the display shelf and viewing terrace |
| West garden bed | X +120..+142, Z -116..-110, Y +31..+33 | Moss, stone-slab edging, cherry leaves, flowering azalea leaves, and small flowers |
| East garden bed | X +156..+174, Z -116..-110, Y +31..+33 | Matching low planting strip, clear of the dragon sculpture footprint |
| Corner lanterns | X +119/+175, Z -113, Y +32..+35 | Two low stone posts marking the approach edges |

The garden beds are deliberately low and sit to either side of the center
approach. Confirm the planting height, path connection, and view to the Dragon
Balls in-game; the garden is a first-pass landscape treatment.

## Shenron Valley southern entry gate

| Detail | Relative footprint | Purpose |
| --- | --- | --- |
| Center approach path | X +145..+153, Z -81..-70, Y +31 | Nine-block-wide polished-andesite approach connecting the terrace to the gate |
| Gate piers | X +136..+138 and +160..+162, Z -76..-74, Y +32..+39 | Dark polished-blackstone pillars with gold bands and red inner accents |
| Gate lintel | X +139..+159, Z -76..-74, Y +39..+40 | Gold-capped crosspiece framing a broad, unobstructed opening |
| Lanterns and approach markers | Four lanterns on pier corners; low markers near X +132..+134 and +164..+166 | Warm lighting and subtle path guidance outside the main walking lane |

The entry gate is placed south of the viewing terrace and faces the southern
approach. Its opening is intentionally broad; inspect the path join, lantern
height, and sightline from the terrace in Minecraft before finalizing.

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
- The generator now runs thirty-two region functions in one call. The four cherry-tree planters sit diagonally inside the central plaza, away from the cardinal roads and the center arrival pad. A floating orange-glass Dragon Ball sits above the arrival pad, beginning at Y +8 so the ground-level spawn remains clear. The four road gateways are color-coded: north blue (Capsule City), east red (Tournament), west pink (Kame House), and south yellow (Kami's Lookout). Their support piers sit outside the five-wide road lanes, leaving the centerline passable. The north-side guide pavilion occupies the side strip beside the road.
- The expanded lookout adds broad platform wings, a layered palace hall, side galleries, a taller decorated tower shaft, and monumental corner pylons. The training court and garden are added afterward on the enlarged deck. Exact appearance and collision still need in-game review.
- The repaired pack has static validation and ZIP packaging in GitHub Actions,
  but still needs a real Minecraft 1.21.1 in-game visual test.
