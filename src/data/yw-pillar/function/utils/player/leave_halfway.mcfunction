execute as @a[tag=spectator,gamemode=spectator] run tp @s 100 3 100
execute as @a[tag=spectator,gamemode=spectator] run gamemode adventure

execute as @a[tag=ingame] run gamemode adventure
execute as @a[tag=ingame] run tp @s 100 3 100
execute as @a[tag=ingame] run team leave @s
execute as @a[tag=ingame] run tag @s remove out
execute as @a[tag=ingame] run tag @s remove ingame