place template yw-pillar:pillar/sea/2 -17 0 -17
fill 0 1 9 0 29 9 prismarine_bricks
fill 8 1 -6 8 29 -6 prismarine_bricks
fill -8 1 -6 -8 29 -6 prismarine_bricks
place template yw-pillar:cage -1 30 8
place template yw-pillar:cage 7 30 -7
place template yw-pillar:cage -9 30 -7

tp @a[scores={Number=1}] 0 31 9 -180 0
tp @a[scores={Number=2}] 8 31 -6 40 0
tp @a[scores={Number=3}] -8 31 -6 -40 0

give @a[tag=ingame] fishing_rod[unbreakable={},enchantments={lure:5},tooltip_display={hidden_components:["unbreakable"]}]
