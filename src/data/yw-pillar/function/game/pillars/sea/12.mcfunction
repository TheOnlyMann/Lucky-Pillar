place template yw-pillar:pillar/sea/5 -20 0 -20
fill 15 1 0 15 29 0 prismarine_bricks
fill 13 1 7 13 29 7 prismarine_bricks
fill 8 1 13 8 29 13 prismarine_bricks
fill 0 1 15 0 29 15 prismarine_bricks
fill -7 1 13 -7 29 13 prismarine_bricks
fill -13 1 7 -13 29 7 prismarine_bricks
fill -15 1 0 -15 29 0 prismarine_bricks
fill -13 1 -7 -13 29 -7 prismarine_bricks
fill -8 1 -13 -8 29 -13 prismarine_bricks
fill 0 1 -15 0 29 -15 prismarine_bricks
fill 8 1 -13 8 29 -13 prismarine_bricks
fill 13 1 -8 13 29 -8 prismarine_bricks

place template yw-pillar:cage 14 30 -1
place template yw-pillar:cage 12 30 6
place template yw-pillar:cage 7 30 12
place template yw-pillar:cage -1 30 14
place template yw-pillar:cage -8 30 12
place template yw-pillar:cage -14 30 6
place template yw-pillar:cage -16 30 -1
place template yw-pillar:cage -14 30 -8
place template yw-pillar:cage -9 30 -14
place template yw-pillar:cage -1 30 -16
place template yw-pillar:cage 7 30 -14
place template yw-pillar:cage 12 30 -9

tp @a[scores={Number=1}] 15 31 0 90 0
tp @a[scores={Number=2}] 13 31 7 120 0
tp @a[scores={Number=3}] 8 31 13 150 0
tp @a[scores={Number=4}] 0 31 15 -180 0
tp @a[scores={Number=5}] -7 31 13 -150 0
tp @a[scores={Number=6}] -13 31 7 -120 0
tp @a[scores={Number=7}] -15 31 0 -90 0
tp @a[scores={Number=8}] -13 31 -7 -60 0
tp @a[scores={Number=9}] -8 31 -13 -30 0
tp @a[scores={Number=10}] 0 31 -15 0 0
tp @a[scores={Number=11}] 8 31 -13 30 0
tp @a[scores={Number=12}] 13 31 -8 60 0

give @a[tag=ingame] fishing_rod[unbreakable={},enchantments={lure:5},tooltip_display={hidden_components:["unbreakable"]}]