# KAMI'S LOOKOUT — central hatch safety and upper sanctuary forecourt finish.
# Run from the Lookout's raised origin (Y+140). Deck is local Y28; main hall floor is local Y30.
# The shaft guard leaves a three-block east opening so players can move to/from the ladder.

# QUARTZ / GOLD GUARD AROUND THE KORIN SHAFT HATCH.
fill ~-5 ~31 ~134 ~-5 ~32 ~144 minecraft:iron_bars
fill ~-4 ~31 ~134 ~4 ~32 ~134 minecraft:iron_bars
fill ~-4 ~31 ~144 ~4 ~32 ~144 minecraft:iron_bars
fill ~5 ~31 ~135 ~5 ~32 ~137 minecraft:iron_bars
fill ~5 ~31 ~141 ~5 ~32 ~143 minecraft:iron_bars
# Chunky quartz corner posts and gold caps reinforce the guard without closing the shaft.
fill ~-5 ~31 ~134 ~-5 ~34 ~134 minecraft:quartz_pillar
fill ~5 ~31 ~134 ~5 ~34 ~134 minecraft:quartz_pillar
fill ~-5 ~31 ~144 ~-5 ~34 ~144 minecraft:quartz_pillar
fill ~5 ~31 ~144 ~5 ~34 ~144 minecraft:quartz_pillar
setblock ~-5 ~35 ~134 minecraft:sea_lantern
setblock ~5 ~35 ~134 minecraft:sea_lantern
setblock ~-5 ~35 ~144 minecraft:sea_lantern
setblock ~5 ~35 ~144 minecraft:sea_lantern
fill ~-4 ~33 ~134 ~4 ~33 ~134 minecraft:gold_block
fill ~-4 ~33 ~144 ~4 ~33 ~144 minecraft:gold_block
fill ~-5 ~33 ~135 ~-5 ~33 ~143 minecraft:gold_block
fill ~5 ~33 ~135 ~5 ~33 ~137 minecraft:gold_block
fill ~5 ~33 ~141 ~5 ~33 ~143 minecraft:gold_block

# SOUTH SANCTUARY PROMENADE — level path to the main temple's open front doorway.
fill ~-6 ~28 ~108 ~6 ~28 ~119 minecraft:smooth_quartz
# Two broad quartz stair rows rise from the floating deck to the sanctuary plinth and hall floor.
fill ~-6 ~29 ~118 ~6 ~29 ~118 minecraft:quartz_stairs[facing=south,half=bottom,shape=straight,waterlogged=false]
fill ~-6 ~30 ~119 ~6 ~30 ~119 minecraft:quartz_stairs[facing=south,half=bottom,shape=straight,waterlogged=false]
# Existing gold edge inlays continue alongside the stair rows without reducing the walking width.
fill ~-5 ~28 ~108 ~-5 ~28 ~119 minecraft:gold_block
fill ~5 ~28 ~108 ~5 ~28 ~119 minecraft:gold_block
fill ~-4 ~28 ~109 ~4 ~28 ~109 minecraft:polished_diorite
fill ~-4 ~28 ~118 ~4 ~28 ~118 minecraft:polished_diorite
fill ~-2 ~28 ~111 ~2 ~28 ~111 minecraft:light_blue_stained_glass
fill ~-2 ~28 ~115 ~2 ~28 ~115 minecraft:light_blue_stained_glass
fill ~-1 ~28 ~113 ~1 ~28 ~113 minecraft:gold_block
setblock ~0 ~28 ~113 minecraft:sea_lantern

# Twin low meditation benches sit outside the central path, below the temple façade.
fill ~-15 ~28 ~110 ~-10 ~28 ~116 minecraft:smooth_quartz
fill ~-14 ~28 ~111 ~-11 ~28 ~115 minecraft:dark_oak_slab[type=bottom,waterlogged=false]
fill ~-14 ~29 ~111 ~-14 ~29 ~115 minecraft:dark_oak_planks
fill ~-10 ~29 ~111 ~-10 ~29 ~115 minecraft:dark_oak_planks
setblock ~-15 ~29 ~113 minecraft:lantern
fill ~10 ~28 ~110 ~15 ~28 ~116 minecraft:smooth_quartz
fill ~11 ~28 ~111 ~14 ~28 ~115 minecraft:dark_oak_slab[type=bottom,waterlogged=false]
fill ~11 ~29 ~111 ~11 ~29 ~115 minecraft:dark_oak_planks
fill ~15 ~29 ~111 ~15 ~29 ~115 minecraft:dark_oak_planks
setblock ~15 ~29 ~113 minecraft:lantern

# Low gold-and-quartz approach markers at the far corners of the promenade.
fill ~-8 ~28 ~108 ~-8 ~30 ~108 minecraft:quartz_pillar
fill ~8 ~28 ~108 ~8 ~30 ~108 minecraft:quartz_pillar
setblock ~-8 ~31 ~108 minecraft:sea_lantern
setblock ~8 ~31 ~108 minecraft:sea_lantern
# End of Kami's Lookout courtyard finish.
