# Dragon Ball Lobby Datapack

A vanilla-block Minecraft Java **1.21.1** datapack that generates a Dragon Ball-inspired adventure hub while the companion mod is in development.

## First build contents

- Central spawn plaza with radial paths and illuminated pillars
- Capsule-style city tower, landing pad and annex
- World Martial Arts Tournament ring and spectator stands
- Kame House island, lagoon, dock and palms
- Elevated Kami's Lookout with palace platform and cloud-like supports
- Shenron sanctuary with seven Dragon Ball displays and a segmented dragon sculpture
- Landscape shelf, waterways, groves and lighting

## Install

1. Back up your world.
2. Place the `DragonBallLobby-Datapack-1.0.zip` file in `<world>/datapacks/` (or place the contents of the `datapack/` folder in a datapack folder).
3. Run `/reload`.
4. Run `/function dblobby:help`.
5. Stand in a large, open area and run `/function dblobby:generate`.

The build is centered on the executing player's position. It replaces blocks in its build footprint, so use a new test world or a backup. The build extends above and below the player.

## Build

GitHub Actions validates the datapack structure and fill volumes, then packages a ZIP with `pack.mcmeta` at the archive root. Download it from the Actions run's Artifacts section.

## Current status

This is the first playable blockout, not yet a finished custom-map-quality build. All structures use vanilla blocks so the pack works before the companion mod has a built JAR. Once custom block registry IDs are stable, the landmarks can be upgraded to use them.
