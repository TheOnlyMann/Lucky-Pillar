place template yw-pillar:pillar/sea/5 -20 0 -20
fill 0 1 8 0 29 8 prismarine_bricks
fill 0 1 -8 0 29 -8 prismarine_bricks
place template yw-pillar:pillar/sea/red -2 29 6
place template yw-pillar:pillar/sea/blue -2 29 -10
tp @a[scores={Number=1}] 0 31 8 -180 0
tp @a[scores={Number=2}] 0 31 -8 0 0
give @a[tag=ingame] fishing_rod[unbreakable={},enchantments={lure:5},tooltip_display={hidden_components:["unbreakable"]}]