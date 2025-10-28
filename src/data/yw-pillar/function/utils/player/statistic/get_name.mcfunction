item replace entity @s enderchest.0 with player_head
item modify entity @s enderchest.0 {function:"fill_player_head",entity:"this"}

$data modify storage yw-pillar:statistics temp."$(UUID)".name set from entity @s EnderItems.[0].components."minecraft:profile".name

item replace entity @s enderchest.0 with air