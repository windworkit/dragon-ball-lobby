# Expanded implementation log

## Iteration 1 — central plaza landscaping and landmark

Implemented in the repaired installable pack:

- versions/patched/data/dblobby/function/regions/plaza_gardens.mcfunction
- versions/patched/data/dblobby/function/regions/plaza_dragon_ball.mcfunction

### Plaza gardens
- Adds four matching corner planters around the existing central spawn.
- Uses cherry trees, moss, flowering azalea leaves, and small flower accents to soften the quartz-and-concrete plaza.
- Keeps the center arrival pad and cardinal road corridors clear.

### Floating Dragon Ball
- Adds a layered orange stained-glass orb above the arrival pad.
- Uses redstone blocks for a simple one-star motif and a sea lantern inside for a glowing core.
- Starts at Y +8 so the existing ground-level arrival area remains open.
- The motif faces south in this first pass.

### Directional gateways
- Recolors the four existing gateway caps to match the cardinal route markers: north blue, east red, west pink, south yellow.
- Uses only the existing cap footprint, so it does not narrow the walking lanes or add new obstructions.

### Integration
- Both new regions run automatically during full generation.
- Each can be rebuilt independently with its own /function dblobby:regions/... command.
- Static validation now requires all nine regions and checks that the full generator calls every required region.

### Not yet verified
The exact in-game appearance, lighting, sightlines, and player spawn clearance still need a visual review in a disposable Minecraft Java 1.21.1 world. The orb is a layered block approximation, not a true sphere.

## Iteration 2 — district usability details

Implemented in the repaired installable pack:

- versions/patched/data/dblobby/function/regions/capsule_boulevard_lighting.mcfunction
- versions/patched/data/dblobby/function/regions/tournament_seating.mcfunction

### Capsule Corporation boulevard
- Adds ten matching quartz street lamps with light-blue caps and sea-lantern cores.
- Places lamps in the open strips alongside the central avenue, outside the main headquarters and existing side-building footprints.
- Uses repeated spacing to give the district a more deliberate boulevard rhythm.

### World Martial Arts Tournament
- Adds four stepped spectator rows on both the north and south sides of the arena.
- Uses dark oak and red seating bands to complement the existing red-and-white arena palette.
- Adds four illuminated corner pylons to identify spectator-bank entry points.

### Integration
- Both new regions run automatically during full generation and have independent rebuild commands.
- Static validation now requires all twelve region functions and checks their inclusion in the full generator.

### Not yet verified
The seating's walking clearance, player movement, and sightlines to the ring need an in-game check. The Capsule lamps need a night-time lighting review. These additions are structural first passes, not a finished stadium or city.

## Iteration 3 — Kame House shoreline access

Implemented in the repaired installable pack:

- versions/patched/data/dblobby/function/regions/kame_dock_details.mcfunction

- Extends the original wooden dock over the shoreline into a wider landing pier.
- Adds four dark-oak support piles, low side rails, two lantern posts, and mooring bollards.
- Overlaps the existing dock endpoint intentionally so the old and new sections join.

The dock's exact relationship to the generated shoreline and waterline still needs an in-game check.

## Iteration 4 — Kami's Lookout upper-deck sanctuary

Implemented in the repaired installable pack:

- `versions/patched/data/dblobby/function/regions/lookout_sanctuary_details.mcfunction`
- Adds a gold-bordered practice court on the open east wing of the existing upper platform.
- Adds a small moss-and-cherry meditation garden on the west wing, with lantern accents and stone seating.
- Adds four matching illuminated corner pylons to make the elevated platform easier to read at night.
- Integrated into full generation and exposed as an independent rebuild command.

The details are positioned outside the central palace footprint and sit on the existing platform at Y+28. Their appearance, collision, and clearance still need in-game inspection.

## Iteration 5 — Capsule Corporation headquarters entrance

Implemented in the repaired installable pack:

- `versions/patched/data/dblobby/function/regions/capsule_hq_entrance.mcfunction`
- Cuts a centered public doorway through the existing south-facing HQ wall.
- Adds a broad quartz forecourt, shallow approach steps, blue guide strips, a framed blue entrance sign, and paired illuminated pillars.
- Adds low moss planters to soften the approach while keeping the boulevard-side lamp rows separate.
- Integrated into the full generator and exposed as an independent rebuild command.

The threshold was kept at the existing building floor height and the stair blocks sit outside the doorway. The passage, collision, and facade appearance still need an in-game visual check.


## Iteration 6 — Shenron Valley visitor terrace

Implemented in the repaired installable pack:

- `versions/patched/data/dblobby/function/regions/shenron_viewing_terrace.mcfunction`
- Adds a broad smooth-stone visitor deck on the shelf immediately south of the Shenron display.
- Connects the deck to the moss-shelf edge with a short polished-andesite approach tongue.
- Frames the sides and rear with low stone-brick and spruce-fence rails while leaving the north-facing view open.
- Adds four compact dark-oak seating bays, a clear center aisle, four quartz lantern columns, and small planted rear-corner accents.
- Integrated into full generation, exposed as an independent rebuild command, and added to the required-region static validator.

This is a structural first pass. The exact ground transition, stair orientation, player collision, and sightline to Shenron still require a Minecraft 1.21.1 in-game review.


## Iteration 7 — Shenron Valley approach gardens

Implemented in the repaired installable pack:

- `versions/patched/data/dblobby/function/regions/shenron_valley_garden.mcfunction`
- Adds matching low moss-and-stone garden beds along the south edge of the Dragon Ball display shelf.
- Uses cherry leaves, flowering azalea leaves, and small flower accents for a softer transition into the visitor terrace.
- Keeps a nine-block-wide polished-andesite center approach open and adds two low lantern markers at its outer edges.
- Integrated into full generation, exposed as an independent rebuild command, and added to required-region static validation.

This is a first landscape pass. Confirm the path connection, plant placement, and sightlines in Minecraft before treating the area as finished.

## Next build priorities

1. Build a welcome / navigation pavilion with clear placeholder stations for rules, portals, and future NPCs.
2. Add deliberate path edging and district entrance markers.
3. Continue district-specific polish, beginning with Capsule Corporation and the tournament forecourt.
4. Load the pack in a disposable Java 1.21.1 world and review screenshots before calling any area finished.


## Iteration 8 — Shenron Valley southern entry gate

Implemented in the repaired installable pack:

- `versions/patched/data/dblobby/function/regions/shenron_valley_entry_gate.mcfunction`
- Adds a nine-block-wide polished-andesite approach from the visitor terrace.
- Frames the southern entrance with dark polished-blackstone piers, gold bands, red inner accents, and a gold-capped lintel.
- Adds lanterns and low approach markers outside the central walking lane.
- Integrated into full generation, exposed as an independent rebuild command, and added to required-region static validation.

This is a structural first pass. Check the terrace connection, gate clearance, and sightline in a disposable Java 1.21.1 world.

## Iteration 9 — Capsule Corporation dome and boulevard atrium

Implemented in the patched datapack:

- `capsule_hq_dome.mcfunction` clears the original rectangular HQ and rebuilds it as a large elliptical white body with blue ribbon glazing and a layered gold/yellow dome.
- The central north-south boulevard remains open through the HQ as an 11-block-wide passage.
- Separate west and east side entrances lead to reception and research wings.
- `capsule_hq_interior.mcfunction` now places counters, research pods, displays, waiting bays, and lights only in the side wings.
- The new dome is generated after the previous facade finish, and the interior is furnished after the dome.

## Iteration 10 — Capsule City satellite buildings

Implemented in the patched datapack:

- `capsule_city_satellites.mcfunction` replaces the two square side buildings with rounded capsule structures.
- The west satellite is a residential capsule home with blue roof accents and a small furnished interior.
- The east satellite is a research annex with a gold/yellow crown and glass sample pods.
- Both buildings retain separate south-facing entries and align to the HQ campus footprint.

## Iteration 11 — Kame House island shoreline

Implemented in the patched datapack:

- `kame_island_shoreline.mcfunction` clears the previous rectangular foundation and rebuilds the island with nested sandstone, sand, and grass ellipses.
- A larger oval of gravel and shallow water surrounds the landform, bringing the dock to a readable shoreline.
- The outer west palm and shoreline light were moved inward to match the reshaped island.
- The shoreline runs immediately after the Kame House base and before the palm grove, training garden, beach path, dock details, and arrival promenade.

### Static / visual status

The new modules are integrated and their region names are required by the static validator. The current checks cover function references, fill-volume limits, Java 1.21.1 block IDs, and block-state properties. The Capsule City and Kame island shapes remain unverified visually until they are generated in a real 1.21.1 test world.
