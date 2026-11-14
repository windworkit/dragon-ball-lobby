# KORIN'S TOWER — interior climbing shaft and intermediate rest landings.
# Carve a narrow vertical route through the otherwise solid terracotta core.
fill ~-158 ~-18 ~152 ~-152 ~100 ~158 minecraft:air
# Reinforced inner shaft walls.
fill ~-159 ~-18 ~151 ~-159 ~100 ~159 minecraft:cut_sandstone
fill ~-151 ~-18 ~151 ~-151 ~100 ~159 minecraft:cut_sandstone
fill ~-159 ~-18 ~151 ~-151 ~100 ~151 minecraft:cut_sandstone
fill ~-159 ~-18 ~159 ~-151 ~100 ~159 minecraft:cut_sandstone
# Climb ladder on the west interior wall.
fill ~-158 ~-17 ~153 ~-158 ~100 ~153 minecraft:ladder[facing=east]
# Rest platforms at regular intervals; the ladder opening remains clear.
fill ~-158 ~0 ~152 ~-152 ~0 ~158 minecraft:smooth_sandstone
fill ~-157 ~0 ~153 ~-153 ~0 ~157 minecraft:air
fill ~-158 ~25 ~152 ~-152 ~25 ~158 minecraft:smooth_sandstone
fill ~-157 ~25 ~153 ~-153 ~25 ~157 minecraft:air
fill ~-158 ~50 ~152 ~-152 ~50 ~158 minecraft:smooth_sandstone
fill ~-157 ~50 ~153 ~-153 ~50 ~157 minecraft:air
fill ~-158 ~75 ~152 ~-152 ~75 ~158 minecraft:smooth_sandstone
fill ~-157 ~75 ~153 ~-153 ~75 ~157 minecraft:air
# Lit rest alcoves on alternating sides.
setblock ~-154 ~1 ~154 minecraft:lantern
setblock ~-154 ~26 ~154 minecraft:lantern
setblock ~-154 ~51 ~154 minecraft:lantern
setblock ~-154 ~76 ~154 minecraft:lantern
# Open the summit pavilion floor into the shaft and provide a safe arrival landing.
fill ~-158 ~101 ~152 ~-152 ~103 ~158 minecraft:air
fill ~-161 ~101 ~149 ~-149 ~101 ~161 minecraft:smooth_sandstone
fill ~-160 ~102 ~150 ~-150 ~102 ~160 minecraft:air
