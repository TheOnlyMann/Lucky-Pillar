place template yw-pillar:pillar/sea/2 -17 0 -17
fill 0 1 9 0 29 9 prismarine_bricks
fill 0 1 -9 0 29 -9 prismarine_bricks
fill 9 1 0 9 29 0 prismarine_bricks
fill -9 1 0 -9 29 0 prismarine_bricks

place template yw-pillar:cage -1 30 8
place template yw-pillar:cage -1 30 -10
place template yw-pillar:cage 8 30 -1
place template yw-pillar:cage -10 30 -1

tp @a[scores={Number=1}] 0 31 9 180 0
tp @a[scores={Number=2}] 0 31 -9 -180 0
tp @a[scores={Number=3}] 9 31 0 90 0
tp @a[scores={Number=4}] -9 31 0 -90 0

give @a[tag=ingame] fishing_rod[unbreakable={},enchantments={lure:5},tooltip_display={hidden_components:["unbreakable"]}]
