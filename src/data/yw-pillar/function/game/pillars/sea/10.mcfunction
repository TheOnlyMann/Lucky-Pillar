place template yw-pillar:pillar/sea/5 -20 0 -20
fill 13 1 0 13 29 0 prismarine_bricks
fill 11 1 8 11 29 8 prismarine_bricks
fill 4 1 12 4 29 12 prismarine_bricks
fill -4 1 12 -4 29 12 prismarine_bricks
fill -11 1 8 -11 29 8 prismarine_bricks
fill -13 1 0 -13 29 0 prismarine_bricks
fill -11 1 -8 -11 29 -8 prismarine_bricks
fill -4 1 -12 -4 29 -12 prismarine_bricks
fill 4 1 -12 4 29 -12 prismarine_bricks
fill 11 1 -8 11 29 -8 prismarine_bricks

place template yw-pillar:cage 12 30 -1
place template yw-pillar:cage 10 30 7
place template yw-pillar:cage 3 30 11
place template yw-pillar:cage -5 30 11
place template yw-pillar:cage -12 30 7
place template yw-pillar:cage -14 30 -1
place template yw-pillar:cage -12 30 -9
place template yw-pillar:cage -5 30 -13
place template yw-pillar:cage 3 30 -13
place template yw-pillar:cage 10 30 -9

tp @a[scores={Number=1}] 13 31 0 90 0
tp @a[scores={Number=2}] 11 31 8 125 0
tp @a[scores={Number=3}] 4 31 12 160 0
tp @a[scores={Number=4}] -4 31 12 -160 0
tp @a[scores={Number=5}] -11 31 8 -125 0
tp @a[scores={Number=6}] -13 31 0 -90 0
tp @a[scores={Number=7}] -11 31 -8 -55 0
tp @a[scores={Number=8}] -4 31 -12 -20 0
tp @a[scores={Number=9}] 4 31 -12 20 0
tp @a[scores={Number=10}] 11 31 -8 55 0

give @a[tag=ingame] fishing_rod[unbreakable={},enchantments={lure:5},tooltip_display={hidden_components:["unbreakable"]}]