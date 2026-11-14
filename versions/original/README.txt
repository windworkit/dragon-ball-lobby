# Dragon Ball Lobby Datapack 1.0 — Minecraft 1.21.1

A large, modular, vanilla-block lobby generator for Java Edition 1.21.1.
Works in singleplayer and dedicated servers. Does not require your unfinished
Dragon Ball NeoForge mod to have a JAR.

## Install
1. Make a backup of your world.
2. Put the folder containing `pack.mcmeta` and `data` into `<world>/datapacks/`.
   You can also use the supplied ZIP directly in that `datapacks` folder.
3. Enter the world and run `/reload`.
4. Stand in a broad, open area at the height where you want the plaza surface.
5. Run `/function dblobby:generate`.

This pack uses pack format 48 (Minecraft 1.21.1). Function files use the
singular `function` folder required by Minecraft 1.21+.

## Commands
- `/function dblobby:help`
- `/function dblobby:generate`
- `/function dblobby:regions/central_spawn`
- `/function dblobby:regions/capsule_city`
- `/function dblobby:regions/tournament`
- `/function dblobby:regions/kame_house`
- `/function dblobby:regions/kamis_lookout`
- `/function dblobby:regions/shenron_valley`
- `/function dblobby:regions/roads_and_waypoints`

## Safety
- Use a NEW test world or full backup first.
- The center plaza is built at the command execution position. The map spans
  roughly 420 blocks north-south and east-west.
- It lays platforms and structures without clearing the natural terrain.
- Re-running functions can overwrite player construction in those areas.
- This is a first large blockout, not the final polished map. Detailed terrain,
  interiors, NBT structures, NPCs, signage, and mod-block integration come next.
- The generate function sets the executing player's respawn point at the plaza.

## Mod compatibility
Vanilla blocks only for now. Later, selected blocks can be changed to your
Dragon Ball mod's registered block IDs once those IDs are stable.

