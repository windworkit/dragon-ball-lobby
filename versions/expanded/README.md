# Dragon Ball Lobby — expanded server build track

This folder is the design and implementation track for the next-generation server lobby. It is deliberately separate from `versions/original/` and `versions/patched/`: the recovered 1.0 build remains preserved, while the expanded track can grow without breaking the installable repaired datapack.

## Design target

Build a polished, explorable Dragon Ball hub that feels like a real place rather than a flat collection of structures. The central plaza is the visual anchor; themed districts branch from it with clear paths, strong silhouettes, landscaping, lighting, and intentional sightlines.

The lobby should also be useful on a multiplayer server. Reserve clear, readable spaces for:
- Welcome and server information
- Game-mode / world portals
- Rules and tutorial guidance
- NPCs, quests, shops, and progression hooks
- Community events and leaderboards
- Safe arrival, spawn protection, and accessible navigation

## Design documents

- [Master blueprint](MASTER_BLUEPRINT.md) — layout, atmosphere, districts, and visual standards.
- [Build roadmap](BUILD_ROADMAP.md) — staged implementation and test gates.

## Compatibility and safety

- Target: Minecraft Java 1.21.1, pack format 48.
- Initial construction should use vanilla blocks so it can be built before the Dragon Ball mod JAR is ready.
- Modded blocks, NPC integrations, portals, quests, and server plugins are later integration layers.
- No build in this folder is considered game-tested until it has been loaded in a real 1.21.1 world and inspected.
- Do not copy experimental files over the original or repaired versions.
