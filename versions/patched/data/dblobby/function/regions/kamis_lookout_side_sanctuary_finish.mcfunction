# KAMI'S LOOKOUT — connect and furnish the two side sanctuaries.
# Run at the raised Lookout origin (generation origin Y+140).
# Opens inward doors from both side temples into the main sanctuary through short covered arcades.
# Does not alter the temple domes, outer hull, orbital lamps, or central Korin hatch.

# WEST SIDE SANCTUARY — inward doorway through the east wall.
fill ~-23 ~30 ~136 ~-23 ~38 ~142 minecraft:air
fill ~-19 ~30 ~136 ~-19 ~38 ~142 minecraft:air
fill ~-23 ~30 ~134 ~-23 ~38 ~134 minecraft:quartz_pillar
fill ~-23 ~30 ~144 ~-23 ~38 ~144 minecraft:quartz_pillar
fill ~-23 ~39 ~134 ~-23 ~39 ~144 minecraft:quartz_bricks
fill ~-19 ~30 ~134 ~-19 ~38 ~134 minecraft:quartz_pillar
fill ~-19 ~30 ~144 ~-19 ~38 ~144 minecraft:quartz_pillar
fill ~-19 ~39 ~134 ~-19 ~39 ~144 minecraft:quartz_bricks
setblock ~-23 ~40 ~139 minecraft:gold_block
setblock ~-19 ~40 ~139 minecraft:gold_block
# A level three-block connector crosses the narrow gap; one deliberate quartz stair rises into the main hall.
fill ~-22 ~29 ~136 ~-20 ~29 ~142 minecraft:smooth_quartz
fill ~-22 ~29 ~135 ~-20 ~29 ~135 minecraft:gold_block
fill ~-22 ~29 ~143 ~-20 ~29 ~143 minecraft:gold_block
fill ~-21 ~29 ~137 ~-21 ~29 ~141 minecraft:light_blue_stained_glass
fill ~-20 ~30 ~136 ~-20 ~30 ~142 minecraft:quartz_stairs[facing=east,half=bottom,shape=straight,waterlogged=false]
# Open arcade corner posts and a shallow roof keep the connection legible.
fill ~-22 ~30 ~135 ~-22 ~38 ~135 minecraft:quartz_pillar
setblock ~-22 ~39 ~135 minecraft:gold_block
fill ~-20 ~30 ~135 ~-20 ~38 ~135 minecraft:quartz_pillar
setblock ~-20 ~39 ~135 minecraft:gold_block
fill ~-22 ~30 ~143 ~-22 ~38 ~143 minecraft:quartz_pillar
setblock ~-22 ~39 ~143 minecraft:gold_block
fill ~-20 ~30 ~143 ~-20 ~38 ~143 minecraft:quartz_pillar
setblock ~-20 ~39 ~143 minecraft:gold_block
fill ~-23 ~40 ~135 ~-19 ~40 ~143 minecraft:quartz_slab[type=top,waterlogged=false]
fill ~-22 ~40 ~139 ~-20 ~40 ~139 minecraft:gold_block
setblock ~-21 ~41 ~139 minecraft:sea_lantern

# EAST SIDE SANCTUARY — mirrored inward doorway and connector.
fill ~23 ~30 ~136 ~23 ~38 ~142 minecraft:air
fill ~19 ~30 ~136 ~19 ~38 ~142 minecraft:air
fill ~23 ~30 ~134 ~23 ~38 ~134 minecraft:quartz_pillar
fill ~23 ~30 ~144 ~23 ~38 ~144 minecraft:quartz_pillar
fill ~23 ~39 ~134 ~23 ~39 ~144 minecraft:quartz_bricks
fill ~19 ~30 ~134 ~19 ~38 ~134 minecraft:quartz_pillar
fill ~19 ~30 ~144 ~19 ~38 ~144 minecraft:quartz_pillar
fill ~19 ~39 ~134 ~19 ~39 ~144 minecraft:quartz_bricks
setblock ~23 ~40 ~139 minecraft:gold_block
setblock ~19 ~40 ~139 minecraft:gold_block
fill ~20 ~29 ~136 ~22 ~29 ~142 minecraft:smooth_quartz
fill ~20 ~29 ~135 ~22 ~29 ~135 minecraft:gold_block
fill ~20 ~29 ~143 ~22 ~29 ~143 minecraft:gold_block
fill ~21 ~29 ~137 ~21 ~29 ~141 minecraft:light_blue_stained_glass
fill ~20 ~30 ~136 ~20 ~30 ~142 minecraft:quartz_stairs[facing=west,half=bottom,shape=straight,waterlogged=false]
fill ~22 ~30 ~135 ~22 ~38 ~135 minecraft:quartz_pillar
setblock ~22 ~39 ~135 minecraft:gold_block
fill ~20 ~30 ~135 ~20 ~38 ~135 minecraft:quartz_pillar
setblock ~20 ~39 ~135 minecraft:gold_block
fill ~22 ~30 ~143 ~22 ~38 ~143 minecraft:quartz_pillar
setblock ~22 ~39 ~143 minecraft:gold_block
fill ~20 ~30 ~143 ~20 ~38 ~143 minecraft:quartz_pillar
setblock ~20 ~39 ~143 minecraft:gold_block
fill ~19 ~40 ~135 ~23 ~40 ~143 minecraft:quartz_slab[type=top,waterlogged=false]
fill ~20 ~40 ~139 ~22 ~40 ~139 minecraft:gold_block
setblock ~21 ~41 ~139 minecraft:sea_lantern

# SIDE-CHAMBER INTERIORS — flush gold / light-blue meditation medallions.
fill ~-32 ~29 ~139 ~-28 ~29 ~139 minecraft:gold_block
fill ~-30 ~29 ~137 ~-30 ~29 ~141 minecraft:gold_block
fill ~-31 ~29 ~138 ~-29 ~29 ~140 minecraft:light_blue_stained_glass
setblock ~-30 ~29 ~139 minecraft:sea_lantern
fill ~28 ~29 ~139 ~32 ~29 ~139 minecraft:gold_block
fill ~30 ~29 ~137 ~30 ~29 ~141 minecraft:gold_block
fill ~29 ~29 ~138 ~31 ~29 ~140 minecraft:light_blue_stained_glass
setblock ~30 ~29 ~139 minecraft:sea_lantern
# Mirrored low meditation benches remain outside the central walk to each new doorway.
fill ~-34 ~30 ~134 ~-34 ~30 ~136 minecraft:dark_oak_slab[type=bottom,waterlogged=false]
fill ~-34 ~31 ~134 ~-34 ~31 ~136 minecraft:dark_oak_planks
fill ~-34 ~30 ~142 ~-34 ~30 ~144 minecraft:dark_oak_slab[type=bottom,waterlogged=false]
fill ~-34 ~31 ~142 ~-34 ~31 ~144 minecraft:dark_oak_planks
fill ~34 ~30 ~134 ~34 ~30 ~136 minecraft:dark_oak_slab[type=bottom,waterlogged=false]
fill ~34 ~31 ~134 ~34 ~31 ~136 minecraft:dark_oak_planks
fill ~34 ~30 ~142 ~34 ~30 ~144 minecraft:dark_oak_slab[type=bottom,waterlogged=false]
fill ~34 ~31 ~142 ~34 ~31 ~144 minecraft:dark_oak_planks
# Freestanding shrine screens provide a focal point on each outer chamber wall.
fill ~-35 ~33 ~137 ~-35 ~39 ~141 minecraft:quartz_bricks
fill ~-35 ~34 ~138 ~-35 ~38 ~140 minecraft:light_blue_stained_glass
fill ~-35 ~36 ~139 ~-35 ~36 ~139 minecraft:gold_block
fill ~-35 ~33 ~136 ~-35 ~39 ~136 minecraft:gold_block
fill ~-35 ~33 ~142 ~-35 ~39 ~142 minecraft:gold_block
fill ~35 ~33 ~137 ~35 ~39 ~141 minecraft:quartz_bricks
fill ~35 ~34 ~138 ~35 ~38 ~140 minecraft:light_blue_stained_glass
fill ~35 ~36 ~139 ~35 ~36 ~139 minecraft:gold_block
fill ~35 ~33 ~136 ~35 ~39 ~136 minecraft:gold_block
fill ~35 ~33 ~142 ~35 ~39 ~142 minecraft:gold_block
# Two vertical blue-glass windows on the outside wall of each sanctuary, with quartz framing and gold sills.
fill ~-37 ~34 ~135 ~-37 ~39 ~137 minecraft:light_blue_stained_glass
fill ~-37 ~34 ~141 ~-37 ~39 ~143 minecraft:light_blue_stained_glass
fill ~-37 ~33 ~135 ~-37 ~33 ~137 minecraft:gold_block
fill ~-37 ~40 ~135 ~-37 ~40 ~137 minecraft:quartz_bricks
fill ~-37 ~33 ~141 ~-37 ~33 ~143 minecraft:gold_block
fill ~-37 ~40 ~141 ~-37 ~40 ~143 minecraft:quartz_bricks
fill ~37 ~34 ~135 ~37 ~39 ~137 minecraft:light_blue_stained_glass
fill ~37 ~34 ~141 ~37 ~39 ~143 minecraft:light_blue_stained_glass
fill ~37 ~33 ~135 ~37 ~33 ~137 minecraft:gold_block
fill ~37 ~40 ~135 ~37 ~40 ~137 minecraft:quartz_bricks
fill ~37 ~33 ~141 ~37 ~33 ~143 minecraft:gold_block
fill ~37 ~40 ~141 ~37 ~40 ~143 minecraft:quartz_bricks
# Warm ceiling lanterns finish each quiet chamber.
setblock ~-30 ~42 ~135 minecraft:lantern[hanging=true]
setblock ~-30 ~42 ~143 minecraft:lantern[hanging=true]
setblock ~30 ~42 ~135 minecraft:lantern[hanging=true]
setblock ~30 ~42 ~143 minecraft:lantern[hanging=true]
# End of the paired Lookout side-sanctuary connections and interior finish.
