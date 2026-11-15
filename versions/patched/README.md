# Dragon Ball Lobby — repaired complete datapack

This is the assembled Minecraft Java 1.21.1 datapack based on the recovered
original 1.0 source. It contains the pack metadata, load tag, core functions,
and all original region functions and the expanded decorative modules.

## Install
1. Back up your world or create a disposable test world.
2. Copy the entire `versions/patched/` folder contents (the `pack.mcmeta`
   file and `data/` folder) into a folder inside your world's
   `datapacks/` directory, or download the repository as ZIP and extract
   this folder's contents into a datapack folder.
3. Run `/reload`.
4. Stand in a large open area at the desired plaza height.
5. Run `/function dblobby:generate`.

## What's included
- Central spawn hub with an open-air monumental rotunda framing the floating one-star Dragon Ball, illuminated crown columns, seating bays, compass medallions, four landscaped cherry-tree gardens, four passable architectural district gateways with layered supports, illuminated glass insets, flush colored threshold strips, and repeated illuminated roadside approach markers, and a dedicated blue-and-white Capsule City arrival gateway, four dedicated social seating courts, Capsule Corp boulevard lighting, tiered tournament spectator seating, an extended lantern-lit Kame House dock, and a dedicated Shenron viewing terrace with landscaped approach gardens and a gold-capped southern entry gate.
- Capsule Corporation-inspired city block and glass towers, expanded with residential/workshop buildings, rooftop greenery, boulevard pylons, illuminated forecourt details, and a framed public HQ entrance.
- World Martial Arts Tournament stadium with a level ground concourse, a one-block-raised fighting mat, upper spectator tiers, roofline canopy wings, illuminated corner pylons, and a separate event arrival.
- Kame House island with a curved beach approach, palm grove, beach umbrellas, outdoor seating, shoreline markers, and a dedicated training garden with practice posts.
- Kami's Lookout expanded into a monumental white-and-red palace with a broad sky platform, ceremonial colonnade, observation wings, and a taller decorated tower shaft;
- Shenron Valley with a rebuilt giant Shenron with a thick C-shaped coil, defined head, horns, whiskers, cloud banks, gold underside, and seven individually staged Dragon Ball displays, and a south-side visitor viewing terrace with matching low garden borders, a clear center approach, and an ornamental southern entry gate.
- Korin's Tower: a grounded colossal terracotta tower with a supported exterior stair, multiple balcony bands, vertical windows, a cloud foundation, and a high summit pavilion.
- Roads and colored waypoints.

## Player hub guide

Run `/function dblobby:hub` in-game for a concise welcome message and district directions. The north blue road leads to Capsule Corporation City, east red to the World Martial Arts Tournament, south gold to Kami's Lookout, and west pink to Kame House Island. Shenron Valley lies beyond the northeastern city route; Korin's Tower stands beyond the southwestern island route. A guide pavilion sits beside the north road, four social seating courts give players places to gather, and four color-coded NPC-ready stations are staged around the plaza for future server guides, quests, travel, and character information. `/function dblobby:help` lists builder and maintenance functions.

## Repair applied
The original Shenron Valley function contained three fills exceeding
Minecraft's 32,768-block command limit. This version splits those fills into
nine smaller commands. The untouched original remains in
`versions/original/`.

## Important limitations
This is an expanding static build, not a finished custom adventure map. It does not yet include custom NPCs, quests, mod-specific blocks, or Dragon Ball progression logic. The current hub and landmark interiors are vanilla-block builds. The pack still needs a live Minecraft visual and multiplayer test. Back up first: generation can overwrite
existing terrain and player builds around the chosen execution point.

## Layout and build status

See [WORLD_LAYOUT.md](WORLD_LAYOUT.md) for the relative region positions and
recommended generation precautions.

Every push affecting this folder runs static validation and builds a
`DragonBallLobby-Patched-1.0` ZIP artifact. Open the repository's Actions tab,
select the latest successful **Validate repaired Dragon Ball lobby** run,
and download the artifact from its Artifacts section.

## Latest visual and elevation refinement

The current patched build includes a rebuilt volumetric Shenron, a rounded central
Dragon Ball, a unified central plaza floor, district façade finishing, a Kame House
roof and porch, a gold-domed Lookout, a grounded Korin Tower with exterior access,
and a level tournament concourse. See [WORLD_LAYOUT.md](WORLD_LAYOUT.md) for the
current elevation table and relative coordinates.

The static validator now also checks every referenced vanilla block ID and block-state
property/value against a pinned Java 1.21.1 block manifest in
`tools/vanilla_blocks_1_21_1.json`. This catches invalid block names before a
datapack ZIP is packaged.
