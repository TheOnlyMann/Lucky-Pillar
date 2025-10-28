place template yw-pillar:pillar/sea/5 -20 0 -20
fill 0 1 12 0 29 12 prismarine_bricks
fill -10 1 6 -10 29 6 prismarine_bricks
fill 10 1 6 10 29 6 prismarine_bricks
fill -10 1 -6 -10 29 -6 prismarine_bricks
fill 10 1 -6 10 29 -6 prismarine_bricks
fill 0 1 -12 0 29 -12 prismarine_bricks

place template yw-pillar:cage -1 30 11
place template yw-pillar:cage -11 30 5
place template yw-pillar:cage 9 30 5
place template yw-pillar:cage -11 30 -7
place template yw-pillar:cage 9 30 -7
place template yw-pillar:cage -1 30 -13

tp @a[scores={Number=1}] 0 31 12 180 0
tp @a[scores={Number=2}] -10 31 6 180 0
tp @a[scores={Number=3}] 10 31 6 180 0
tp @a[scores={Number=4}] -10 31 -6 180 0
tp @a[scores={Number=5}] 10 31 -6 180 0
tp @a[scores={Number=6}] 0 31 -12 0 0

give @a[tag=ingame] fishing_rod[unbreakable={},enchantments={lure:5},tooltip_display={hidden_components:["unbreakable"]}]
