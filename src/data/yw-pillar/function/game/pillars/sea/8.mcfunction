place template yw-pillar:pillar/sea/5 -20 0 -20
fill 0 1 12 0 29 12 prismarine_bricks
fill -9 1 9 -9 29 9 prismarine_bricks
fill 9 1 9 9 29 9 prismarine_bricks
fill -12 1 0 -12 29 0 prismarine_bricks
fill 12 1 0 12 29 0 prismarine_bricks
fill -9 1 -9 -9 29 -9 prismarine_bricks
fill 9 1 -9 9 29 -9 prismarine_bricks
fill 0 1 -12 0 29 -12 prismarine_bricks

place template yw-pillar:cage -1 30 11
place template yw-pillar:cage -10 30 8
place template yw-pillar:cage 8 30 8
place template yw-pillar:cage -13 30 -1
place template yw-pillar:cage 11 30 -1
place template yw-pillar:cage -10 30 -10
place template yw-pillar:cage 8 30 -10
place template yw-pillar:cage -1 30 -13

tp @a[scores={Number=1}] 0 31 12 180 0
tp @a[scores={Number=2}] -9 31 9 180 0
tp @a[scores={Number=3}] 9 31 9 180 0
tp @a[scores={Number=4}] -12 31 0 180 0
tp @a[scores={Number=5}] 12 31 0 180 0
tp @a[scores={Number=6}] -9 31 -9 0 0
tp @a[scores={Number=7}] 9 31 -9 0 0
tp @a[scores={Number=8}] 0 31 -12 0 0

give @a[tag=ingame] fishing_rod[unbreakable={},enchantments={lure:5},tooltip_display={hidden_components:["unbreakable"]}]
