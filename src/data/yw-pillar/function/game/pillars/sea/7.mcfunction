place template yw-pillar:pillar/sea/5 -20 0 -20
fill 0 1 12 0 29 12 prismarine_bricks
fill -9 1 7 -9 29 7 prismarine_bricks
fill 9 1 7 9 29 7 prismarine_bricks
fill -11 1 -3 -11 29 -3 prismarine_bricks
fill 11 1 -3 11 29 -3 prismarine_bricks
fill -5 1 -11 -5 29 -11 prismarine_bricks
fill 5 1 -11 5 29 -11 prismarine_bricks

place template yw-pillar:cage -1 30 11
place template yw-pillar:cage -10 30 6
place template yw-pillar:cage 8 30 6
place template yw-pillar:cage -12 30 -4
place template yw-pillar:cage 10 30 -4
place template yw-pillar:cage -6 30 -12
place template yw-pillar:cage 4 30 -12

tp @a[scores={Number=1}] 0 31 12 180 0
tp @a[scores={Number=2}] -9 31 7 180 0
tp @a[scores={Number=3}] 9 31 7 180 0
tp @a[scores={Number=4}] -11 31 -3 180 0
tp @a[scores={Number=5}] 11 31 -3 180 0
tp @a[scores={Number=6}] -5 31 -11 0 0
tp @a[scores={Number=7}] 5 31 -11 0 0

give @a[tag=ingame] fishing_rod[unbreakable={},enchantments={lure:5},tooltip_display={hidden_components:["unbreakable"]}]
