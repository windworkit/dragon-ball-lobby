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
- Central spawn plaza with a floating one-star Dragon Ball centerpiece, four landscaped cherry-tree gardens, and four color-coded directional gateways and roads, Capsule Corp boulevard lighting, tiered tournament spectator seating, an extended lantern-lit Kame House dock, and a dedicated Shenron viewing terrace with landscaped approach gardens and a gold-capped southern entry gate.
- Capsule Corporation-inspired city block and glass towers, with a framed public HQ entrance, blue-accented forecourt, low planters, and paired lights.
- World Martial Arts Tournament arena.
- Kame House island.
- Kami's Lookout expanded into a monumental white-and-red palace with a broad sky platform, ceremonial colonnade, observation wings, and a taller decorated tower shaft;
- Shenron Valley with a giant raised Shenron dragon, layered green coils, gold belly plates, dorsal mane, horns, whiskers, seven Dragon Ball displays, and a south-side visitor viewing terrace with matching low garden borders, a clear center approach, and an ornamental southern entry gate.
- Korin's Tower: a separate colossal terracotta tower with multiple balcony bands, vertical windows, a cloud-like foundation, and an elevated summit pavilion.
- Roads and colored waypoints.

## Repair applied
The original Shenron Valley function contained three fills exceeding
Minecraft's 32,768-block command limit. This version splits those fills into
nine smaller commands. The untouched original remains in
`versions/original/`.

## Important limitations
This is an expanding static build, not a finished custom adventure map. It does not
yet include custom NPCs, quests, mod-specific blocks, interiors with detailed
furnishings, or Dragon Ball progression logic. The pack has not yet been
tested in a live Minecraft world. Back up first: generation can overwrite
existing terrain and player builds around the chosen execution point.

## Layout and build status

See [WORLD_LAYOUT.md](WORLD_LAYOUT.md) for the relative region positions and
recommended generation precautions.

Every push affecting this folder runs static validation and builds a
`DragonBallLobby-Patched-1.0` ZIP artifact. Open the repository's Actions tab,
select the latest successful **Validate repaired Dragon Ball lobby** run,
and download the artifact from its Artifacts section.
