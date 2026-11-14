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
- Central spawn hub with an open-air monumental rotunda framing the floating one-star Dragon Ball, illuminated crown columns, seating bays, compass medallions, four landscaped cherry-tree gardens, four passable architectural district gateways and roads, Capsule Corp boulevard lighting, tiered tournament spectator seating, an extended lantern-lit Kame House dock, and a dedicated Shenron viewing terrace with landscaped approach gardens and a gold-capped southern entry gate.
- Capsule Corporation-inspired city block and glass towers, expanded with residential/workshop buildings, rooftop greenery, boulevard pylons, illuminated forecourt details, and a framed public HQ entrance.
- World Martial Arts Tournament stadium with expanded outer concourse, upper spectator tiers, roofline canopy wings, illuminated corner pylons, and multiple entry portals.
- Kame House island with a curved beach approach, palm grove, beach umbrellas, outdoor seating, shoreline markers, and a dedicated training garden with practice posts.
- Kami's Lookout expanded into a monumental white-and-red palace with a broad sky platform, ceremonial colonnade, observation wings, and a taller decorated tower shaft;
- Shenron Valley with a giant raised Shenron dragon, layered green coils, gold belly plates, dorsal mane, horns, whiskers, seven Dragon Ball displays, and a south-side visitor viewing terrace with matching low garden borders, a clear center approach, and an ornamental southern entry gate.
- Korin's Tower: a separate colossal terracotta tower with multiple balcony bands, vertical windows, a cloud-like foundation, and an elevated summit pavilion.
- Roads and colored waypoints.

## Player hub guide

Run `/function dblobby:hub` in-game for a concise welcome message and district directions. The north blue road leads to Capsule Corporation City, east red to the World Martial Arts Tournament, south gold to Kami's Lookout, and west pink to Kame House Island. Shenron Valley lies beyond the northeastern city route; Korin's Tower stands beyond the southwestern island route. A guide pavilion sits beside the north road. `/function dblobby:help` lists builder and maintenance functions.

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
