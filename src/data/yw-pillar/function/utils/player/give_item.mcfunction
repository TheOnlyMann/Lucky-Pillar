execute as @a[tag=ready,tag=!out] run loot give @s loot yw-pillar:main

execute store result score #Timer LootTimer run data get storage yw-pillar:settings time.loot_time