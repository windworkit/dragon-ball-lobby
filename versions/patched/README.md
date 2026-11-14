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
- Central spawn plaza and four directional roads.
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
