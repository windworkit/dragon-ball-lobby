# Dragon Ball Lobby Datapack

A Minecraft Java **1.21.1** Dragon Ball-inspired lobby project. The first builds use vanilla blocks so development can continue before the companion Dragon Ball mod has a finished JAR.

## Project versions

- `versions/original/` — recovered original 1.0 source, preserved for reference.
- `versions/patched/` — repaired, complete 1.0 datapack with the Shenron Valley fill-limit fix. This is the current installable baseline.
- `versions/expanded/` — next-generation server lobby design, district standards, measured-layout audit, and staged implementation roadmap.
- `datapack/` — earlier simplified prototype; kept separate from the recovered full build.

## Current baseline features

- Central spawn plaza and radial paths
- Capsule Corporation-inspired city
- World Martial Arts Tournament arena
- Kame House island
- Kami's Lookout
- Shenron Valley with seven Dragon Ball displays
- Roads, waypoints, terrain, and lighting

The expanded design aims to turn this into a cohesive multiplayer hub with a finished arrival plaza, welcome and navigation areas, portal pads, future NPC / quest / shop spaces, event staging, and more detailed district architecture.

## Install the repaired baseline

1. Back up your world or create a disposable test world.
2. Open the repository's [Actions](https://github.com/windworkit/dragon-ball-lobby/actions) tab.
3. Select the latest successful **Validate repaired Dragon Ball lobby** run.
4. Download the `DragonBallLobby-Patched-1.0` artifact and extract its ZIP.
5. Put the extracted datapack folder (containing `pack.mcmeta` and `data/`) in the world's `datapacks/` directory.
6. Run `/reload`, then `/function dblobby:help`.
7. Stand in a large open area and run `/function dblobby:generate`.

Generation is centered on the command execution position and can replace blocks across a large footprint. Use a backup and do not run it over player builds.

## Validation and testing status

GitHub Actions statically checks datapack metadata, function references, required regions, and fill command limits, then packages the repaired baseline. A separate layout audit reports the measured command extents of each region.

Static checks do **not** prove that the lobby looks good or works correctly in game. The expanded build still needs a real Minecraft 1.21.1 test world, visual review, and iteration before it can be called server-ready.
