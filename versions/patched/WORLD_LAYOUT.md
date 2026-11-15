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
| Capsule City | X -83 to +83, Z -202 to -63; HQ dome X -22..+22, Z -186..-140, Y 0..27; paired satellite capsules centered at X -37/+37, Z -155 |
| Tournament | X +65 to +205, Z -70 to +70 |
| Kame House | Main island ellipse centered X -132, Z 0; land approx. X -202..-62, Z -58..+58; surrounding water oval approx. X -212..-52, Z -68..+68 |
| Kami's Lookout | X -70 to +70, Z +71 to +207; saucer hull Y +1..+27, circular deck Y +28, central gold-crowned sanctuary reaches Y +76, side towers and orbital lamps reach Y +68 |
| Korin's Tower | X -190 to -120, Z +126 to +210; chamfered cloud plinth Y 0..10, summit pavilion Y +134..+177 |
| Shenron Valley | X +59 to +233, Z -211 to -66; reference-inspired Shenron spans approximately X +59..+219 and Z -211..-88, with horn and tail-fin tips reaching Y +158 |
| Roads and waypoints | Main cardinal roads extending to about 118 blocks |

These are approximate bounding boxes inferred from the function coordinates,
not a promise that every block inside the box is filled.

### Shenron anatomy finish

The anatomy and forelimb finishes are applied after the main Shenron rebuild.
They keep the Y+31 seven-ball court intact and add a broader lower jaw and brow,
layered cheek frills and nape mane, branching swept horns, paired curling
whisker filaments, a fanned three-prong tail, two additional rear legs, and a
more visible outward-swept front pair of arms. The paws have separated toes and
gold claws; a stepped dorsal crest and scale plates follow the coil. The approximate statue envelope is
X +59..+220, Z -211..-78, Y +41..+158. The arm tips remain outside the
central entry lane and sit beyond the side edges of the viewing terrace. This is a command-coordinate estimate;
confirm the silhouette, limb clearance, and viewing angles in a live world.

## District gateways and guide pavilion

The four gateway arches are centered on the cardinal roads at approximately 45 blocks from spawn. Their piers sit outside the five-wide walking lane; the centerline is kept clear. North is blue for Capsule City, east red for the World Tournament, west pink for Kame House, and south yellow for Kami's Lookout. Shenron Valley branches into the northeast city region; Korin's Tower occupies the southwest beyond Kame House.

The information pavilion sits beside the north road at X +12..+30, Z -59..-40, Y -1..+8. It contains a covered counter, lectern/cartography station, light-blue glazing, and a simple Dragon Ball color motif. It is deliberately outside the road corridor. `/function dblobby:hub` remains the reliable text guide.

## Future NPC station pads

Four compact display stations are built into the diagonal side bays around the central plaza, away from the cherry gardens and cardinal road lanes. Each has a quartz plinth, colored backing panel, glass accent, and low lantern markers. Their intended roles are north blue (welcome/guide), east red (quests), south gold (services/travel), and west pink (world/character information). These are deliberately empty staging points: this vanilla datapack does not spawn custom entities or assume any mod NPC registry IDs. They can later be replaced or populated once the Dragon Ball mod exposes its actual NPC entities and interaction system.

## Central hub rotunda

| Detail | Relative footprint | Purpose |
| --- | --- | --- |
| Four crown columns | X/Z -18..-13 and +13..+18, Y +1..+17 | Tall quartz supports with gold collars and illuminated caps, framing the arrival pad. |
| Open crown roof | X/Z -18..+18, Y +18..+19 | Four roof wings form a square canopy with an 11x11 center aperture, keeping the floating Dragon Ball visible. |
| Crown spires | Four corner positions, Y +20..+25 | Short illuminated spires establish a recognizable central hub skyline. |
| Seating bays | X -12..-7 and +7..+12, Z -12..-10 and +10..+12, Y +1 | Low dark-oak benches around the central walking ring. |
| Compass medallions | Four cardinal points, X/Z 27..31 or -31..-27, Y +1..+2 | Color-coded floor markers reinforce the four district routes. |

The rotunda is intentionally open-air and elevated above the player route. Its center roof aperture preserves a clear view of the Dragon Ball. Use `/function dblobby:hub` in-game for the player-facing district guide; `/function dblobby:help` remains the builder command list.

## Plaza social seating and compass inlays

Four low sandstone courts sit in the diagonal side bays around the rotunda:
- Northeast: X +21..+27, Z -14..-8
- Southeast: X +21..+27, Z +8..+14
- Southwest: X -27..-21, Z +8..+14
- Northwest: X -27..-21, Z -14..-8

Each court has paired dark-oak benches, fence backrests, lanterns, and small
planter accents. Four flush one-block-wide colored floor inlays connect the
arrival pad toward the cardinal medallions: blue north, red east, yellow south,
and pink west. They stop before the outer road lanes.

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
| North gateway arch | X -7..+7, Z -49..-47, Y 0..10 | Blue quartz-and-light-blue frame, supports outside the road |
| East gateway arch | X +47..+49, Z -7..+7, Y 0..10 | Red-and-orange frame, supports outside the road |
| West gateway arch | X -49..-47, Z -7..+7, Y 0..10 | Pink-and-magenta frame, supports outside the road |
| South gateway arch | X -7..+7, Z +47..+49, Y 0..10 | Gold-and-yellow frame, supports outside the road |

Four flush colored compass inlays now extend from the central arrival pad toward the four gateway medallions: blue north, red east, yellow south, and pink west. Each stripe ends before the outer road so it reinforces direction without creating a raised obstacle. The existing generator sets the player's spawn point at Y +3. The Dragon Ball
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
| Kami's Lookout main sanctuary | X -22..+22, Z +118..+160, Y +30..+76 | Open ceremonial hall, layered golden lower dome, tall white belfry, upper gold dome and finial. |
| Korin's Tower access | X -159..-151, Z +151..+159, Y -18..+103 | Vertical ladder shaft with reinforced walls and rest platforms at regular intervals, opening into the summit pavilion. |

These are first-pass functional interiors. The Korin shaft is a ladder-based climb rather than a fully modeled spiral staircase; confirm ladder attachment, floor openings, and summit arrival in-game. Interior furnishings are decorative block approximations, not modded furniture.

## Latest landmark refinement

| Detail | Relative footprint | Purpose |
| --- | --- | --- |
| Shenron epic anatomy pass | X +76..+219, Z -208..-88, Y +43..+147 | Clears the old compact silhouette above the court and rebuilds a towering coil, chest, neck, broad head, branching horns, swept whiskers, paired clawed forelimbs, dorsal mane, segmented belly, and cloud supports. |
| Kami's Lookout arrival shaft and promenade | Shaft X -5..+5, Z +93..+108, Y +1..+28; bridge X -5..+5, Z +104..+121, Y +28 | Rebuilt ladder shaft, framed upper arrival, and a clear gold-edged promenade into the temple forecourt. |

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
- The generator now runs the complete set of base, access, and finish region functions in one call. The four cherry-tree planters sit diagonally inside the central plaza, away from the cardinal roads and the center arrival pad. A floating orange-glass Dragon Ball sits above the arrival pad, beginning at Y +8 so the ground-level spawn remains clear. The four road gateways are color-coded: north blue (Capsule City), east red (Tournament), west pink (Kame House), and south yellow (Kami's Lookout). Their support piers sit outside the five-wide road lanes, leaving the centerline passable. The north-side guide pavilion occupies the side strip beside the road.
- The complete Lookout rebuild replaces the former rectangular platform and palace with a circular 129-by-137-block saucer sanctuary. Its upper deck is a tiled oval with cypress-like topiary, four tall orbital lamps, paired reflecting pools, a central tiered temple, two matching domed side towers, and a clear arrival promenade. The underside narrows through red, ivory, and green hull bands to a small gold keel. Confirm the actual silhouette and player movement in-game.
- The repaired pack has static validation and ZIP packaging in GitHub Actions,
  but still needs a real Minecraft 1.21.1 in-game visual test.


## Gateway architectural finishing pass

A final gateway detail region adds wider stone or quartz footing caps, colored vertical inset panels, lantern highlights, and one-block-wide flush threshold strips on both sides of each arch. The supports remain outside the five-block-wide road lanes. North uses blue/light-blue, east red/orange, south gold/yellow, and west pink/magenta. The threshold strips are decorative floor markers, not teleporters or portal blocks.


## District approach markers

The four main roads now have repeated paired light pylons to establish a visual rhythm between the central plaza and each destination. North uses quartz and Capsule blue; east uses deepslate and tournament red; west uses sandstone and Kame pink; south uses quartz and Kami gold. Markers sit outside the five-block walking lanes. The southern pair is offset farther from center to clear the Lookout tower shaft.


## Capsule City arrival threshold

A dedicated blue-and-white gateway marks the north road's transition into Capsule City at approximately Z -70. Its quartz piers and lintel frame the road while staying outside the five-block walking lane. Paired low plinths and garden strips provide a small arrival forecourt; the blue pavement band marks the city side of the threshold. This is a decorative district entrance, not a portal or teleport trigger.


## Kame House island arrival promenade

A narrow sandstone connector leaves the west road at the island's eastern edge, then follows the south side of the Kame House shell toward the existing beach path and oak dock. The promenade uses a sandstone stair transition, smooth-sandstone paving, pink identity markers, lanterns, and low coastal planting beds. A small dark-oak landing pad overlaps the existing beach path and pier approach to create a continuous visual connection. The route is deliberately kept outside the house footprint and leaves the dock's central deck clear. Confirm the exact one-block elevation transition and shoreline join in-game.

## Full polish pass — current build standard

This section supersedes earlier Y-level notes above wherever they conflict with the
current generator. The goal is a consistent **Y0 ground datum** for the main hub
and ground districts, while keeping intentionally elevated landmarks legible and
reachable.

### Surface and route elevations

| Area | Floor / arrival level | Current treatment |
| --- | --- | --- |
| Central spawn plaza | Floor blocks Y0 | One continuous quartz/stone plaza, flush colored district spokes, four social courts, and a rounded nine-block floating Dragon Ball at Y8..16 |
| Capsule City | Boulevard floor blocks Y2 | Two north-facing stair rows at the city threshold connect the Y0 north road to the raised avenue; civic forecourt and side streets remain at ground level |
| Tournament district | Concourses Y0; fighting mat Y1 | Previous nested full-height pyramid cleared and replaced with a level spectator concourse and a one-block-high central platform |
| Kame House island | Beach paths and promenade Y-3..-2 | House faces south, with a red pitched roof, pink-and-white façade, porch, palms, dock, and a short sandstone transition from the west road |
| Kami's Lookout | Saucer deck Y+28..29; main hall floor Y+30; central spire Y+76 | Floating oval sanctuary with a stepped armored underside, three gold-domed temple volumes, gardens, reflecting pools, and a ladder-shaft promenade |
| Korin's Tower | Ground plinth Y0..10; shaft Y12..133; summit Y134..177 | The tower has been raised by 32 blocks so its cloud foundation begins at the world datum; an exterior supported stair and bridge meet the entry shaft |
| Shenron Valley | Visitor court Y31; seven Dragon Ball displays Y32..39 | A level display court, seven separated orb pedestals, layered cloud banks, and a thick C-shaped Shenron coil at approximately Y45..92 |

### Shenron — rebuilt landmark silhouette

The compact snake-like silhouette is now cleared above the display court and replaced with a much larger, reference-inspired dragon. Its thick body forms a broad elevated coil with a visible hollow center; the coil rises into a substantial chest and neck before meeting a wide skull, forward muzzle, recessed mouth, red eyes, branching horns, cheek mane, and long paired whiskers. Two articulated forelimbs extend from the chest and finish in separate palms and hooked claws. Layered dorsal fins, flank scales, red-edged gold belly plates, a swept tapering tail, and low cloud supports give the sculpture distinct anatomy and a more dimensional outline. The new silhouette spans roughly X +76..+219 and Z -208..-88, with its horn tips reaching Y +147. The Y31 visitor court and seven Dragon Ball displays remain below it.

Seven Dragon Balls are displayed on individual plinths around the court. The
orbs use rounded orange-glass profiles with a red star count facing the visitor
terrace. They are not placed in a flat row, and the central hub orb has its own
smaller, rounded one-star silhouette beneath the rotunda aperture.

### Central hub and ground-district finish

The central plaza's player walking surface is now rebuilt as one level at Y0.
A geometric dark-stone and quartz medallion frames the spawn, with flush blue,
red, pink, and gold route inlays pointing to the four districts. The central orb
is smaller and rounder, leaving the ground-level spawn unobstructed.

Capsule City receives a more recognizable blue-and-white corporate identity:
façade bands, window ribbons, roof crowns, entry-sign detailing, low planted
courts, and a direct stair transition from the north road. The main avenue is
intentionally raised two blocks and the entry ramp makes that change visible.

The tournament district has a single level concourse, red perimeter treatment,
open entry portals, spectator tiers, a clear fighting surface, and a separate
event arrival with registration kiosks and an entry crest. The central fighting
platform is only one block above the concourse.

Kame House receives a pitched red roof over the pink shell, pale eaves, a
turtle-inspired front sign, side windows, a porch that leaves the dock route
open, and warm island landscaping. Its shore remains lower than the main road
because it is built as a beach island; the promenade is the intended transition.

### Elevated landmarks

Kami's Lookout has been completely reimagined as a large floating circular sanctuary inspired by the supplied reference. The upper court is a 129-by-137-block oval tiled in white and pale stone. Beneath it, stepped red, white, green, and red hull bands narrow into a golden keel, giving the platform a broad inverted-bowl profile. A central white temple rises through a broad lower gold dome into a tall upper belfry and second gold crown; two smaller matching temples flank it. Four tall white orbital lamps, cypress-like topiary planters, twin reflecting pools, perimeter markers, and a clear shaft-to-temple promenade finish the upper deck. The old cloud-only underbelly and rectangular palace are cleared by the final rebuild region.

Korin's Tower is now grounded: the original below-grade base has been moved up
32 blocks without shrinking the shaft or summit pavilion. A supported, wide
exterior stair rises from the southwest approach to a bridge and then the
interior ladder route. The summit remains intentionally high.

The landmarks above have passed repository static validation and command-volume
checks. Minecraft does not perform a visual preview of datapack geometry, so
their final proportions, stair collision, and sightlines still require a live
world review.

### Capsule City to Shenron Valley elevated approach

A marked three-block road leaves the eastern edge of the Capsule boulevard, bends
north around the headquarters forecourt and workshops, then heads east to the
valley stair. The 30-step stone stair climbs from the Capsule district's Y2
street level to the Shenron visitor shelf at Y31. A five-wide supported
causeway continues along the southern edge of the viewing deck and meets the
existing Shenron entry gate. The route has low retaining walls, blue threshold
accents, lantern markers, and repeated stone/quartz buttresses under the high
causeway. It is an intentional elevated promenade, not a teleport or portal.

## Capsule Corporation architectural rebuild

The main HQ is now a layered elliptical dome with a white cylindrical lower body,
blue ribbon glazing, and a gold/yellow stepped roof. It occupies approximately
X -22..+22, Z -181..-145, Y 0..27. The north-south boulevard remains a clear
11-block-wide passage through the center at X -5..+5; side entrances connect to
the west reception and east research wings. The interior's desks, waiting bays,
research pods, and light column are kept out of the boulevard.

Two smaller satellite buildings flank the HQ:
- West residential capsule: center X -37, Z -155; rounded white body, blue roof,
  south entrance, glazed windows, and a small furnished home interior
- East research capsule: center X +37, Z -155; rounded white body, yellow/gold
  roof, south entrance, glass sample pods, and a research console wall

Both satellites have a Y1 foundation, Y2 public floor, and a roof crown reaching
approximately Y14. They replace the previous square shells within the existing
city footprint. The side walkways join their entrances to the central campus.

## Kame House island shoreline rebuild

The original rectangular land slab has been cleared and replaced with five
nested oval terrain layers centered at X -132, Z 0. The outer sandstone base is
approximately 140 by 116 blocks; successive sandstone and sand shelves narrow
toward the grass surface at Y -3. A shallow oval water ring wraps around the
island and extends beyond the former rectangular corners. The dock remains at
the south shore and sits at the waterline. The west palm and shoreline marker
were moved inward to match the new island outline. Existing house, training
garden, beach path, and dock details are reapplied after the shoreline pass.

All footprints above are relative to the generator origin. Shape, waterline,
tree attachment, access transitions, and sightlines still require review in a
disposable Minecraft 1.21.1 world.

## World Martial Arts Tournament — event entrance finish

The west-side approach now has a layered pagoda-style gate centered over the
existing entrance corridor. Red masonry piers, white lintel courses, gold
accents, a stepped roof, and a lit crest create a recognizable event arrival
without narrowing the central road. The two registration kiosks have been
rebuilt as open-front vendor stalls with counters, barrels, red awnings, and
gold trim. An announcer/judge platform sits on the east side of the ring, with
a short stair and red aisle to the concourse. Four waiting benches remain
outside the fighting surface. The fighting mat, spectator banks, stadium wall
portals, and perimeter canopy remain the arena's primary structure.

## Shenron sculptural refinement

The new anatomy pass replaces the earlier compact dragon rather than layering more detail onto its snake-like outline. The main body is enlarged and lifted into a broad ring-shaped coil, with an open center and a visibly thicker shoulder/chest transition into the neck. The head now has separate cranium, brow, cheek and muzzle masses, a recessed open mouth with fangs, red eyes, two branching horns, crown and cheek fins, and two pairs of whiskers. Paired forelimbs have distinct upper arms, elbows, wrists, palms, and hooked claws. A repeating dorsal mane, smaller flank-scale patches, segmented yellow belly plates with red seams, and a tapering swept tail break up the silhouette. The rebuild clears only the sculpture area above Y40, leaving the seven-ball display court at Y31..39 and the southern visitor approach intact.

## Shenron Valley — natural terrain and oval display court

The former stack of rectangular stone platforms has been replaced by nested
oval terraces centered near X143/Z-137. The lower foundation remains within
the original district footprint, while each higher shelf narrows toward the
seven-ball display. Materials transition from stone and coarse dirt through
stone brick, andesite, deepslate brick, and upper stone. Irregular cobble and
moss outcrops soften the terrace edges. A small enclosed spring sits on the
north-west upper shoulder.

The seven-ball court at Y31 is now an oval with a two-block polished-blackstone
perimeter and a lighter interior floor. The surrounding moss shelf is also
oval, and the garden beds on both sides of the south approach are restored.
The nine-block-wide polished-andesite path connects the court to the viewing
deck and southern gate.

The south-west entry from Capsule City is cut through the lower hillside at
Y2, with open headroom before the staircase begins. The thirty-stage stair
climbs to the Y31 visitor deck, and a broad stone promontory with buttress
footings supports the elevated causeway. Four structural piers extend beneath
the viewing deck so its outer corners are anchored rather than appearing to
float. The deck, rails, lighting, and open north-facing sightline remain.

All these coordinates are relative to the /function dblobby:generate
execution position. The new landscape is statically validated, but the water
simulation, terrain transition, path clearance, support visibility, and
multi-angle dragon sightlines still need a real Java 1.21.1 visual check.

## Tournament spectator and event finish

The east-side scoreboard is mounted above the east portal on the outer stadium
wall, facing west toward the fighting ring. It uses a dark display field,
red-and-quartz frame, gold score medallions, and a central light marker.
Matching red-and-gold pennants flank the display. The north and south spectator
banks receive separated bench rows on their existing stepped terraces, with
the center aisle left open. Evenly spaced sea-lanterns sit beneath both canopy
wings. These are decorative block-built fixtures; no live score system or
interactive tournament logic is assumed.

### Korin's Tower cloud plinth and entrance finish

The tower's square white foundation is softened with progressively chamfered
corners through its four cloud-and-quartz tiers. Low white and light-gray cloud
lobes extend beyond the plinth, while the south bridge landing receives paired
quartz-and-gold bollards. The base entrance is framed by slim quartz pillars,
blue glass insets, gold collars, and lantern caps. The existing bridge and
climbing route remain open; the new cloud work is decorative and does not add
a new teleport or mod dependency.

### Kami's Lookout complete floating rebuild

The final Lookout region clears the previous deck, palace, and cloud details before
building the new saucer. The upper walking surface remains at Y+28 so the existing
height relationship to the hub is preserved. The hull is formed from stepped
horizontal ellipses: red outer band, broad ivory band, red belt, pale-gold/white
transition, green lower bowl, red lower ring, and a small pale keel. Above the deck,
the central temple rises to Y+76 with two lower gold-domed side sanctuaries, four
high lantern pylons, cypress-like planters, twin reflecting pools, and a clear
promenade from the rebuilt ladder shaft. Approximate footprint: X -70..+70,
Z +71..+207. The hull is decorative floating architecture, not a physics-supported
platform; final proportions, approach clearance, and the underside silhouette need
visual confirmation in Minecraft.

### Kame Island Turtle School pavilion

A compact open-sided dojo sits immediately north of the existing training garden,
on the same Y-2 walking surface. It has a red layered roof, quartz-and-wood
supports, a Turtle School shell crest, three wooden practice targets, benches,
equipment barrels, and warm hanging lanterns. A short sandstone-and-gold path
connects its south entrance to the original training patch. It is a decorative
training space; no NPCs, dummies, or mod entities are spawned.
