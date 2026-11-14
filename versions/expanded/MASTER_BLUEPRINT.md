# Master blueprint — Dragon Ball server lobby

## 1. Overall creative direction

**Theme:** a bright, welcoming Dragon Ball world hub with the energy of the anime, but built like a believable place players can navigate and remember.

**Visual language**
- Warm sandstone, smooth sandstone, quartz, and white concrete for clean Capsule Corp / city architecture.
- Cyan, light blue, and blue glass as the recurring Capsule Corp technology accent.
- Deep red, orange, and gold around martial-arts and Dragon Ball landmarks.
- Dark stone, deepslate, and restrained purple accents for dramatic mountain / lookout areas.
- Tropical greens, sand, coral, and water around Kame House.
- Use one strong accent per district; avoid making every structure equally bright.

**Quality bar:** every major structure needs a readable silhouette from a distance, a finished roofline, a deliberate entrance, lighting, trim, and a ground-level transition into the paths around it. Empty flat roofs, exposed command-block-looking surfaces, random block noise, and floating decorative pieces are not acceptable as final detailing.

## 2. Master layout

The repaired 1.0 map remains the coordinate reference for the first expanded pass. Its current district arrangement is:

- Center: main spawn plaza.
- West: Kame House island.
- East: World Martial Arts Tournament grounds.
- North / forward district: Capsule Corporation city.
- South / rear district: Kami's Lookout approach.
- Far side landmark: Shenron Valley and Dragon Ball centerpiece.

The exact relative coordinates are documented in the patched version's `WORLD_LAYOUT.md`. Before adding large structures, the next implementation pass must reconcile those coordinates against the actual region functions and produce a measured footprint map. Do not assume the approximate boxes are exact.

## 3. Central arrival plaza — highest priority

This is the first thing a new player sees. It needs to be the strongest and most finished part of the map.

### Composition
- A broad circular or octagonal plaza with a clearly defined outer ring.
- A raised central arrival dais, large enough for several players without crowding.
- A recognizable Dragon Ball centerpiece: a sculpted star sphere / orb display or a carefully framed dragon motif. Keep the centerpiece readable from spawn height.
- Four cardinal exits with distinct paving patterns and sign / landmark markers.
- A low perimeter wall, planters, lanterns, and seating to make the plaza feel inhabited.
- Clear open space around the arrival point so players do not spawn inside decorations or collide with one another.

### Server-facing zones
- Welcome board: server name, short greeting, version / status line.
- Navigation board: district names and portal / travel directions.
- Rules and help: concise rules, command help, links or NPC placeholders.
- Portal pads: separate, unmistakable pads with enough room for labels and player queues.
- Community board: event announcements, leaderboards, and future seasonal content.

Do not bake real server IPs, URLs, command names, or plugin dependencies into the build until the server configuration is known. Use clearly marked placeholder positions in the first pass.

## 4. Districts

### Capsule Corporation district
A compact futuristic city block, not just a few isolated towers.
- Main Capsule Corp headquarters as the skyline anchor.
- Secondary low-rise buildings to frame streets and create scale.
- A central courtyard / fountain or capsule display.
- Street lamps, sidewalks, planters, benches, road markings, and rooftop details.
- Reserved interior rooms for future shop, laboratory, quest desk, and transport hub.
- Repeated cyan glass / white wall language to tie buildings together.

### World Martial Arts Tournament
Make the arena a destination and an event venue.
- Strong stadium bowl silhouette, layered seating, and a recognizable tournament ring.
- Entrance gates and a forecourt where players can gather.
- Judge / announcer platform and competitor waiting areas.
- Clear spectator circulation and safe access to the ring.
- Future event hooks for scheduled tournaments, duels, and leaderboards.

### Kame House island
A scenic change of pace from the city.
- Pink house as the visual anchor, with a finished roof and windows.
- Sandy shoreline, palm trees, rocks, shallow-water detailing, and a small dock.
- A path that guides visitors from arrival point to the front door.
- Outdoor training / relaxation corner and a small boat landing.
- Preserve a clean island silhouette when viewed from the main approach.

### Kami's Lookout
A dramatic high-altitude landmark.
- Tall, legible vertical approach with a clear base and top platform.
- Cloud / sky framing and a broad lookout deck.
- Small garden details and symmetrical architectural trim.
- A reserved, uncluttered area for future fast travel or progression NPCs.
- Make the approach safe and navigable; no unavoidable lethal falls.

### Shenron Valley
The signature photo spot.
- A landscaped valley / terraced approach leading the eye toward the dragon.
- Seven Dragon Ball display positions, each easy to identify.
- A central dragon silhouette with a strong head / body / coil read from multiple angles.
- Rockwork, water, trees, and lighting that frame rather than obscure the sculpture.
- A safe viewing platform for screenshots and group gatherings.

### Roads and transitions
- Main paths should visually connect at the plaza rather than abruptly stop.
- Each district gets a subtle paving identity, but shared border materials keep the world coherent.
- Use gentle elevation changes, stairs, ramps, retaining walls, and bridges where appropriate.
- Add small points of interest along long routes so travel does not feel empty.

## 5. Navigation and multiplayer usability

- Every district should be identifiable from the central plaza by silhouette and signage.
- Keep the main travel routes broad enough for groups.
- Avoid placing trees, statues, or lamps in the center of paths.
- Keep spawn and portal arrival zones flat, well-lit, and free of hazards.
- Reserve locations for NPCs without making the architecture depend on a particular NPC mod.
- Use sign / display placeholders until the server's actual plugin and mod stack is confirmed.
- Provide a separate staff / maintenance area outside the main player sightline for future controls.

## 6. Lighting, landscaping, and finishing

Lighting should be layered:
1. Functional path lighting at regular intervals.
2. Architectural lighting to reveal entrances, rooflines, and columns.
3. Landmark lighting to draw attention to the plaza centerpiece and major silhouettes.

Landscaping should frame buildings and paths, not randomly fill empty space. Use repeated tree types, deliberate flower beds, retaining walls, benches, water features, and small elevation changes. Avoid obstructing sightlines to the major landmarks.

## 7. Technical build rules

- Keep all generator functions modular by district.
- Keep the recovered original and repaired builds immutable unless a specific repair is needed.
- Any new oversized `fill` must be split into legal commands (maximum 32,768 blocks per fill).
- Prefer deterministic vanilla block palettes for the first pass.
- Separate terrain shaping from architecture and decoration where practical.
- Add a preview / test-world checklist for every major iteration.
- Never describe a static validator pass as proof that the build looks good in game.

## 8. Acceptance checklist

A district is ready for visual review only when:
- Its entrance and purpose are obvious.
- Its silhouette reads from the central plaza or approach path.
- Roofs, walls, corners, and foundations are finished.
- Lighting and landscaping are intentional.
- Paths connect cleanly to adjacent districts.
- No obvious floating blocks, exposed fill scars, or accidental holes remain.
- Players can reach and use the main spaces safely.
- Its function files pass static validation.
- It has been inspected in a real Minecraft 1.21.1 test world before being called complete.
