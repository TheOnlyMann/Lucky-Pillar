place template yw-pillar:pillar/sea/5 -20 0 -20
fill 14 1 0 14 29 0 prismarine_bricks
fill 12 1 8 12 29 8 prismarine_bricks
fill 6 1 13 6 29 13 prismarine_bricks
fill -2 1 14 -2 29 14 prismarine_bricks
fill -9 1 11 -9 29 11 prismarine_bricks
fill -13 1 4 -13 29 4 prismarine_bricks
fill -13 1 -4 -13 29 -4 prismarine_bricks
fill -9 1 -11 -9 29 -11 prismarine_bricks
fill -2 1 -14 -2 29 -14 prismarine_bricks
fill 6 1 -13 6 29 -13 prismarine_bricks
fill 12 1 -8 12 29 -8 prismarine_bricks

place template yw-pillar:cage 13 30 -1
place template yw-pillar:cage 11 30 7
place template yw-pillar:cage 5 30 12
place template yw-pillar:cage -3 30 13
place template yw-pillar:cage -10 30 10
place template yw-pillar:cage -14 30 3
place template yw-pillar:cage -14 30 -5
place template yw-pillar:cage -10 30 -12
place template yw-pillar:cage -3 30 -15
place template yw-pillar:cage 5 30 -14
place template yw-pillar:cage 11 30 -9

tp @a[scores={Number=1}] 14 31 0 90 0
tp @a[scores={Number=2}] 12 31 8 125 0
tp @a[scores={Number=3}] 6 31 13 155 0
tp @a[scores={Number=4}] -2 31 14 -170 0
tp @a[scores={Number=5}] -9 31 11 -140 0
tp @a[scores={Number=6}] -13 31 4 -105 0
tp @a[scores={Number=7}] -13 31 -4 -75 0
tp @a[scores={Number=8}] -9 31 -11 -40 0
tp @a[scores={Number=9}] -2 31 -14 -10 0
tp @a[scores={Number=10}] 6 31 -13 25 0
tp @a[scores={Number=11}] 12 31 -8 55 0

give @a[tag=ingame] fishing_rod[unbreakable={},enchantments={lure:5},tooltip_display={hidden_components:["unbreakable"]}]