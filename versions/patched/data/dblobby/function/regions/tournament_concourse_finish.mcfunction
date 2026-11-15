# WORLD MARTIAL ARTS TOURNAMENT — east concourse support kiosks.
# North kiosk: equipment check / bracket supplies. South kiosk: water and recovery supplies.
# Both are open-front service pavilions, decorative only; no NPCs or interactions are spawned.
# Footprints sit east of the inner seating and south/north of the announcer stand.

# NORTH SUPPORT KIOSK — west-facing open counter.
fill ~170 ~0 ~-38 ~184 ~0 ~-23 minecraft:cut_sandstone
fill ~171 ~1 ~-37 ~183 ~1 ~-24 minecraft:dark_oak_planks
fill ~172 ~1 ~-36 ~182 ~1 ~-25 minecraft:polished_diorite
# Four structural posts and the back service wall.
fill ~172 ~2 ~-36 ~172 ~6 ~-36 minecraft:quartz_pillar
fill ~182 ~2 ~-36 ~182 ~6 ~-36 minecraft:quartz_pillar
fill ~172 ~2 ~-25 ~172 ~6 ~-25 minecraft:quartz_pillar
fill ~182 ~2 ~-25 ~182 ~6 ~-25 minecraft:quartz_pillar
fill ~183 ~1 ~-36 ~183 ~5 ~-25 minecraft:white_concrete
fill ~174 ~1 ~-36 ~180 ~3 ~-36 minecraft:white_concrete
fill ~173 ~2 ~-35 ~178 ~2 ~-35 minecraft:dark_oak_slab[type=top,waterlogged=false]
# Equipment counter and storage cubbies.
fill ~175 ~2 ~-33 ~180 ~2 ~-32 minecraft:dark_oak_slab[type=top,waterlogged=false]
fill ~176 ~3 ~-33 ~179 ~3 ~-32 minecraft:barrel
fill ~181 ~2 ~-34 ~181 ~4 ~-34 minecraft:iron_block
fill ~181 ~2 ~-31 ~181 ~4 ~-31 minecraft:iron_block
fill ~181 ~5 ~-34 ~181 ~5 ~-31 minecraft:red_concrete
# Red roof with white edge and gold front fascia.
fill ~170 ~6 ~-38 ~184 ~6 ~-23 minecraft:red_nether_bricks
fill ~171 ~7 ~-37 ~183 ~7 ~-24 minecraft:red_concrete
fill ~171 ~7 ~-38 ~183 ~7 ~-38 minecraft:white_concrete
fill ~171 ~7 ~-23 ~183 ~7 ~-23 minecraft:white_concrete
fill ~170 ~7 ~-37 ~170 ~7 ~-24 minecraft:gold_block
setblock ~177 ~8 ~-30 minecraft:sea_lantern
# Bracket / equipment emblem on the west-facing fascia.
fill ~170 ~3 ~-34 ~170 ~5 ~-32 minecraft:white_concrete
fill ~170 ~4 ~-34 ~170 ~4 ~-32 minecraft:gold_block
setblock ~170 ~6 ~-33 minecraft:sea_lantern
# Front queue pad is flush with the concourse and approaches from the west.
fill ~166 ~0 ~-34 ~170 ~0 ~-30 minecraft:polished_andesite
fill ~168 ~0 ~-33 ~169 ~0 ~-31 minecraft:gold_block
# Hanging service lanterns under the front eave.
setblock ~173 ~5 ~-37 minecraft:lantern[hanging=true]
setblock ~181 ~5 ~-37 minecraft:lantern[hanging=true]

# SOUTH SUPPORT KIOSK — matching water / recovery pavilion.
fill ~170 ~0 ~23 ~184 ~0 ~38 minecraft:cut_sandstone
fill ~171 ~1 ~24 ~183 ~1 ~37 minecraft:dark_oak_planks
fill ~172 ~1 ~25 ~182 ~1 ~36 minecraft:polished_diorite
fill ~172 ~2 ~25 ~172 ~6 ~25 minecraft:quartz_pillar
fill ~182 ~2 ~25 ~182 ~6 ~25 minecraft:quartz_pillar
fill ~172 ~2 ~36 ~172 ~6 ~36 minecraft:quartz_pillar
fill ~182 ~2 ~36 ~182 ~6 ~36 minecraft:quartz_pillar
fill ~183 ~1 ~25 ~183 ~5 ~36 minecraft:white_concrete
fill ~174 ~1 ~25 ~180 ~3 ~25 minecraft:white_concrete
fill ~173 ~2 ~26 ~178 ~2 ~26 minecraft:dark_oak_slab[type=top,waterlogged=false]
# Water / recovery counter and barrel storage.
fill ~175 ~2 ~28 ~180 ~2 ~29 minecraft:dark_oak_slab[type=top,waterlogged=false]
fill ~176 ~3 ~28 ~179 ~3 ~29 minecraft:barrel
fill ~181 ~2 ~27 ~181 ~4 ~27 minecraft:light_blue_concrete
fill ~181 ~2 ~30 ~181 ~4 ~30 minecraft:light_blue_concrete
fill ~181 ~5 ~27 ~181 ~5 ~30 minecraft:blue_concrete
# Red roof with bright white and blue recovery stripe.
fill ~170 ~6 ~23 ~184 ~6 ~38 minecraft:red_nether_bricks
fill ~171 ~7 ~24 ~183 ~7 ~37 minecraft:red_concrete
fill ~171 ~7 ~23 ~183 ~7 ~23 minecraft:white_concrete
fill ~171 ~7 ~38 ~183 ~7 ~38 minecraft:white_concrete
fill ~170 ~7 ~24 ~170 ~7 ~37 minecraft:light_blue_concrete
setblock ~177 ~8 ~30 minecraft:sea_lantern
# Recovery emblem: white plus-shape set on a blue plaque.
fill ~170 ~3 ~29 ~170 ~5 ~31 minecraft:light_blue_concrete
fill ~170 ~4 ~28 ~170 ~4 ~32 minecraft:white_concrete
fill ~170 ~3 ~30 ~170 ~5 ~30 minecraft:white_concrete
setblock ~170 ~6 ~30 minecraft:sea_lantern
# Front queue pad stays level and separate from the ring-side spectator aisle.
fill ~166 ~0 ~27 ~170 ~0 ~31 minecraft:polished_andesite
fill ~168 ~0 ~28 ~169 ~0 ~30 minecraft:gold_block
setblock ~173 ~5 ~24 minecraft:lantern[hanging=true]
setblock ~181 ~5 ~24 minecraft:lantern[hanging=true]
# Both support kiosks sit outside the seating banks and announcer platform.
