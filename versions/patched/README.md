# Dragon Ball Lobby — repaired complete datapack

This is the assembled Minecraft Java 1.21.1 datapack based on the recovered
original 1.0 source. It contains the pack metadata, load tag, core functions,
and all seven region functions.

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
- Central spawn plaza with a floating one-star Dragon Ball centerpiece, four landscaped cherry-tree gardens, and four color-coded directional gateways and roads, Capsule Corp boulevard lighting, and tiered tournament spectator seating, and an extended lantern-lit Kame House dock.
- Capsule Corporation-inspired city block and glass towers.
- World Martial Arts Tournament arena.
- Kame House island.
- Kami's Lookout.
- Shenron Valley with its large terrain terraces and dragon sculpture.
- Roads and colored waypoints.

## Repair applied
The original Shenron Valley function contained three fills exceeding
Minecraft's 32,768-block command limit. This version splits those fills into
nine smaller commands. The untouched original remains in
`versions/original/`.

## Important limitations
This is a static blockout, not a finished custom adventure map. It does not
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
