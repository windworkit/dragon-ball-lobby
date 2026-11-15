# DISTRICT ROUTE FINISH — color-coded flush road-edge lines and hub-facing directional arrows.
# The central five-block travel lane remains untouched; all accents sit at Y0 beside/on the floor.

# NORTH: Capsule City blue edge lines.
fill ~-3 ~0 ~-116 ~-3 ~0 ~-52 minecraft:light_blue_concrete
fill ~3 ~0 ~-116 ~3 ~0 ~-52 minecraft:light_blue_concrete
fill ~-4 ~0 ~-116 ~-4 ~0 ~-112 minecraft:blue_concrete
fill ~4 ~0 ~-116 ~4 ~0 ~-112 minecraft:blue_concrete

# EAST: Tournament red edge lines.
fill ~52 ~0 ~-3 ~116 ~0 ~-3 minecraft:red_concrete
fill ~52 ~0 ~3 ~116 ~0 ~3 minecraft:red_concrete
fill ~112 ~0 ~-4 ~116 ~0 ~-4 minecraft:orange_concrete
fill ~112 ~0 ~4 ~116 ~0 ~4 minecraft:orange_concrete

# WEST: Kame House pink edge lines.
fill ~-116 ~0 ~-3 ~-52 ~0 ~-3 minecraft:pink_concrete
fill ~-116 ~0 ~3 ~-52 ~0 ~3 minecraft:pink_concrete
fill ~-116 ~0 ~-4 ~-112 ~0 ~-4 minecraft:magenta_concrete
fill ~-116 ~0 ~4 ~-112 ~0 ~4 minecraft:magenta_concrete

# SOUTH: Kami's Lookout gold edge lines.
fill ~-3 ~0 ~52 ~-3 ~0 ~116 minecraft:yellow_concrete
fill ~3 ~0 ~52 ~3 ~0 ~116 minecraft:yellow_concrete
fill ~-4 ~0 ~112 ~-4 ~0 ~116 minecraft:gold_block
fill ~4 ~0 ~112 ~4 ~0 ~116 minecraft:gold_block

# Four flush arrowheads point from the spawn medallion toward their matching gateways.
# North arrow points north (-Z).
fill ~-6 ~0 ~-31 ~6 ~0 ~-31 minecraft:blue_concrete
fill ~-4 ~0 ~-33 ~4 ~0 ~-33 minecraft:blue_concrete
fill ~-2 ~0 ~-35 ~2 ~0 ~-37 minecraft:blue_concrete
fill ~-1 ~0 ~-38 ~1 ~0 ~-38 minecraft:gold_block
# South arrow points south (+Z).
fill ~-6 ~0 ~31 ~6 ~0 ~31 minecraft:yellow_concrete
fill ~-4 ~0 ~33 ~4 ~0 ~33 minecraft:yellow_concrete
fill ~-2 ~0 ~35 ~2 ~0 ~37 minecraft:yellow_concrete
fill ~-1 ~0 ~38 ~1 ~0 ~38 minecraft:gold_block
# East arrow points east (+X).
fill ~31 ~0 ~-6 ~31 ~0 ~6 minecraft:red_concrete
fill ~33 ~0 ~-4 ~33 ~0 ~4 minecraft:red_concrete
fill ~35 ~0 ~-2 ~37 ~0 ~2 minecraft:red_concrete
fill ~38 ~0 ~-1 ~38 ~0 ~1 minecraft:gold_block
# West arrow points west (-X).
fill ~-31 ~0 ~-6 ~-31 ~0 ~6 minecraft:pink_concrete
fill ~-33 ~0 ~-4 ~-33 ~0 ~4 minecraft:pink_concrete
fill ~-37 ~0 ~-2 ~-35 ~0 ~2 minecraft:pink_concrete
fill ~-38 ~0 ~-1 ~-38 ~0 ~1 minecraft:gold_block

# Small gold ticks punctuate the edge markings without breaking the colored line.
setblock ~-3 ~0 ~-60 minecraft:gold_block
setblock ~3 ~0 ~-60 minecraft:gold_block
setblock ~-3 ~0 ~-84 minecraft:gold_block
setblock ~3 ~0 ~-84 minecraft:gold_block
setblock ~-3 ~0 ~-108 minecraft:gold_block
setblock ~3 ~0 ~-108 minecraft:gold_block
setblock ~60 ~0 ~-3 minecraft:gold_block
setblock ~60 ~0 ~3 minecraft:gold_block
setblock ~84 ~0 ~-3 minecraft:gold_block
setblock ~84 ~0 ~3 minecraft:gold_block
setblock ~108 ~0 ~-3 minecraft:gold_block
setblock ~108 ~0 ~3 minecraft:gold_block
setblock ~-60 ~0 ~-3 minecraft:gold_block
setblock ~-60 ~0 ~3 minecraft:gold_block
setblock ~-84 ~0 ~-3 minecraft:gold_block
setblock ~-84 ~0 ~3 minecraft:gold_block
setblock ~-108 ~0 ~-3 minecraft:gold_block
setblock ~-108 ~0 ~3 minecraft:gold_block
setblock ~-3 ~0 ~60 minecraft:gold_block
setblock ~3 ~0 ~60 minecraft:gold_block
setblock ~-3 ~0 ~84 minecraft:gold_block
setblock ~3 ~0 ~84 minecraft:gold_block
setblock ~-3 ~0 ~108 minecraft:gold_block
setblock ~3 ~0 ~108 minecraft:gold_block
# End of district route finish. No raised posts or route blockages are introduced.
