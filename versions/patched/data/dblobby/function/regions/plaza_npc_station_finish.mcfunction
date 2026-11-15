# CENTRAL HUB — final architectural frames for the four future NPC-ready stations.
# Decorative only: no entities, commands, clickable blocks or mod dependencies are added.
# Each station gets a compact quartz canopy, role-color fascia, gold collars and a lantern crown.

# NORTH: blue welcome / guide station. Its south-facing glass panel stays visible.
fill ~11 ~2 ~-38 ~11 ~9 ~-38 minecraft:quartz_pillar
fill ~19 ~2 ~-38 ~19 ~9 ~-38 minecraft:quartz_pillar
fill ~11 ~2 ~-28 ~11 ~9 ~-28 minecraft:quartz_pillar
fill ~19 ~2 ~-28 ~19 ~9 ~-28 minecraft:quartz_pillar
fill ~11 ~5 ~-38 ~11 ~5 ~-28 minecraft:gold_block
fill ~19 ~5 ~-38 ~19 ~5 ~-28 minecraft:gold_block
fill ~11 ~9 ~-38 ~19 ~9 ~-38 minecraft:blue_concrete
fill ~11 ~9 ~-28 ~19 ~9 ~-28 minecraft:blue_concrete
fill ~11 ~10 ~-38 ~19 ~10 ~-28 minecraft:quartz_slab[type=top,waterlogged=false]
fill ~13 ~10 ~-37 ~17 ~10 ~-29 minecraft:blue_concrete
fill ~14 ~10 ~-36 ~16 ~10 ~-30 minecraft:light_blue_concrete
setblock ~15 ~11 ~-33 minecraft:sea_lantern
setblock ~15 ~12 ~-33 minecraft:gold_block

# EAST: red quest / bulletin station.
fill ~28 ~2 ~11 ~28 ~9 ~11 minecraft:quartz_pillar
fill ~38 ~2 ~11 ~38 ~9 ~11 minecraft:quartz_pillar
fill ~28 ~2 ~19 ~28 ~9 ~19 minecraft:quartz_pillar
fill ~38 ~2 ~19 ~38 ~9 ~19 minecraft:quartz_pillar
fill ~28 ~5 ~11 ~38 ~5 ~11 minecraft:gold_block
fill ~28 ~5 ~19 ~38 ~5 ~19 minecraft:gold_block
fill ~28 ~9 ~11 ~38 ~9 ~11 minecraft:red_concrete
fill ~28 ~9 ~19 ~38 ~9 ~19 minecraft:red_concrete
fill ~28 ~10 ~11 ~38 ~10 ~19 minecraft:quartz_slab[type=top,waterlogged=false]
fill ~29 ~10 ~13 ~37 ~10 ~17 minecraft:red_concrete
fill ~30 ~10 ~14 ~36 ~10 ~16 minecraft:orange_concrete
setblock ~33 ~11 ~15 minecraft:sea_lantern
setblock ~33 ~12 ~15 minecraft:gold_block

# SOUTH: gold services / travel station.
fill ~-19 ~2 ~29 ~-19 ~9 ~29 minecraft:quartz_pillar
fill ~-11 ~2 ~29 ~-11 ~9 ~29 minecraft:quartz_pillar
fill ~-19 ~2 ~37 ~-19 ~9 ~37 minecraft:quartz_pillar
fill ~-11 ~2 ~37 ~-11 ~9 ~37 minecraft:quartz_pillar
fill ~-19 ~5 ~29 ~-11 ~5 ~29 minecraft:gold_block
fill ~-19 ~5 ~37 ~-11 ~5 ~37 minecraft:gold_block
fill ~-19 ~9 ~29 ~-11 ~9 ~29 minecraft:yellow_concrete
fill ~-19 ~9 ~37 ~-11 ~9 ~37 minecraft:yellow_concrete
fill ~-19 ~10 ~29 ~-11 ~10 ~37 minecraft:quartz_slab[type=top,waterlogged=false]
fill ~-17 ~10 ~30 ~-13 ~10 ~36 minecraft:yellow_concrete
fill ~-16 ~10 ~31 ~-14 ~10 ~35 minecraft:orange_concrete
setblock ~-15 ~11 ~33 minecraft:sea_lantern
setblock ~-15 ~12 ~33 minecraft:gold_block

# WEST: pink world / character information station.
fill ~-38 ~2 ~-19 ~-38 ~9 ~-19 minecraft:quartz_pillar
fill ~-28 ~2 ~-19 ~-28 ~9 ~-19 minecraft:quartz_pillar
fill ~-38 ~2 ~-11 ~-38 ~9 ~-11 minecraft:quartz_pillar
fill ~-28 ~2 ~-11 ~-28 ~9 ~-11 minecraft:quartz_pillar
fill ~-38 ~5 ~-19 ~-38 ~5 ~-11 minecraft:gold_block
fill ~-28 ~5 ~-19 ~-28 ~5 ~-11 minecraft:gold_block
fill ~-38 ~9 ~-19 ~-28 ~9 ~-19 minecraft:magenta_concrete
fill ~-38 ~9 ~-11 ~-28 ~9 ~-11 minecraft:magenta_concrete
fill ~-38 ~10 ~-19 ~-28 ~10 ~-11 minecraft:quartz_slab[type=top,waterlogged=false]
fill ~-36 ~10 ~-17 ~-30 ~10 ~-13 minecraft:magenta_concrete
fill ~-35 ~10 ~-16 ~-31 ~10 ~-14 minecraft:pink_concrete
setblock ~-33 ~11 ~-15 minecraft:sea_lantern
setblock ~-33 ~12 ~-15 minecraft:gold_block

# Low gold floor ticks connect each kiosk back to the hub compass without raising the walk surface.
setblock ~15 ~0 ~-29 minecraft:gold_block
setblock ~29 ~0 ~15 minecraft:gold_block
setblock ~-15 ~0 ~29 minecraft:gold_block
setblock ~-29 ~0 ~-15 minecraft:gold_block
# End of NPC-ready station finish. The stations remain non-interactive staging builds.
