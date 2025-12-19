place template yw-pillar:pillar/sea/5 -20 0 -20
fill 12 1 0 12 29 0 prismarine_bricks
fill 9 1 8 9 29 8 prismarine_bricks
fill 2 1 12 2 29 12 prismarine_bricks
fill -6 1 10 -6 29 10 prismarine_bricks
fill -11 1 4 -11 29 4 prismarine_bricks
fill -11 1 -4 -11 29 -4 prismarine_bricks
fill -6 1 -10 -6 29 -10 prismarine_bricks
fill 2 1 -12 2 29 -12 prismarine_bricks
fill 9 1 -8 9 29 -8 prismarine_bricks

place template yw-pillar:cage 11 30 -1
place template yw-pillar:cage 8 30 7
place template yw-pillar:cage 1 30 11
place template yw-pillar:cage -7 30 9
place template yw-pillar:cage -12 30 3
place template yw-pillar:cage -12 30 -5
place template yw-pillar:cage -7 30 -11
place template yw-pillar:cage 1 30 -13
place template yw-pillar:cage 8 30 -9

tp @a[scores={Number=1}] 12 31 0 90 0
tp @a[scores={Number=2}] 9 31 8 130 0
tp @a[scores={Number=3}] 2 31 12 170 0
tp @a[scores={Number=4}] -6 31 10 -150 0
tp @a[scores={Number=5}] -11 31 4 -110 0
tp @a[scores={Number=6}] -11 31 -4 -70 0
tp @a[scores={Number=7}] -6 31 -10 -30 0
tp @a[scores={Number=8}] 2 31 -12 10 0
tp @a[scores={Number=9}] 9 31 -8 50 0

give @a[tag=ingame] fishing_rod[unbreakable={},enchantments={lure:5},tooltip_display={hidden_components:["unbreakable"]}]