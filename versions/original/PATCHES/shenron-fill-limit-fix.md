# Shenron Valley fill-limit repair

Apply these replacements to the first three `fill` commands in
`data/dblobby/function/regions/shenron_valley.mcfunction` before running the
original generator. Each replacement preserves the original block, Y range,
and Z range, but divides the X range into legal slices.

## Replace original line 3

Original:
```mcfunction
fill ~82 ~0 ~-197 ~204 ~7 ~-77 minecraft:stone
```

Replacement:
```mcfunction
fill ~82 ~0 ~-197 ~112 ~7 ~-77 minecraft:stone
fill ~113 ~0 ~-197 ~143 ~7 ~-77 minecraft:stone
fill ~144 ~0 ~-197 ~174 ~7 ~-77 minecraft:stone
fill ~175 ~0 ~-197 ~204 ~7 ~-77 minecraft:stone
```

## Replace original line 4

Original:
```mcfunction
fill ~90 ~8 ~-188 ~196 ~15 ~-86 minecraft:stone
```

Replacement:
```mcfunction
fill ~90 ~8 ~-188 ~125 ~15 ~-86 minecraft:stone
fill ~126 ~8 ~-188 ~161 ~15 ~-86 minecraft:stone
fill ~162 ~8 ~-188 ~196 ~15 ~-86 minecraft:stone
```

## Replace original line 5

Original:
```mcfunction
fill ~100 ~16 ~-178 ~186 ~23 ~-96 minecraft:deepslate_bricks
```

Replacement:
```mcfunction
fill ~100 ~16 ~-178 ~143 ~23 ~-96 minecraft:deepslate_bricks
fill ~144 ~16 ~-178 ~186 ~23 ~-96 minecraft:deepslate_bricks
```

The largest resulting slice is 31 × 8 × 121 = 30,008 blocks, below the
32,768-block limit. This patch only fixes command volume; it does not establish
that every structure or block placement is visually correct in Minecraft.
