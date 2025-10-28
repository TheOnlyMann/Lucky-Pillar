##  幸运之柱--YuWan
# ------- v0.1.0 ------- 6
# 准备人数：xx             5
# 当前地图：xxx            4
# 物品间隔：xx s           3
# 事件间隔：xx s           2
# 边界收缩：xx s           1
# ----- 2025.10.15 ----- 0

# 清除
scoreboard players reset %side_playercount% side
scoreboard players reset %side_game_time%
scoreboard players reset %side_nextevent_time% side
scoreboard players reset %side_currentevent_name% side
scoreboard players reset %side_border_time% side
# 添加
scoreboard players set %side_version% side 6
scoreboard players set %side_readyplayer_count% side 5
scoreboard players set %side_settings_map% side 4
scoreboard players set %side_settings_loot_time% side 3
scoreboard players set %side_settings_event_name% side 2
scoreboard players set %side_settings_border_time% side 1
scoreboard players set %side_release_time% side 0

# 显示
scoreboard players display name %side_version% side [{text:"------- ",color:"#1bf169"},{nbt:"info.version",storage:"yw-pillar:system"},{text:" -------"}]
scoreboard players display name %side_readyplayer_count% side ["",{text:"准备人数："},{score:{name:"#Game",objective:"PlayerCount.Ready"},color:"green"}]
scoreboard players display name %side_settings_map% side ["",{text:"当前地图："},{nbt:"game.map_name",storage:"yw-pillar:settings",color:"gold"}]
scoreboard players display name %side_settings_loot_time% side ["",{text:"物品间隔："},{nbt:"time.loot_time",storage:"yw-pillar:settings",color:"aqua"},"s"]
scoreboard players display name %side_settings_event_name% side ["",{text:"事件间隔："},{nbt:"time.event_time",storage:"yw-pillar:settings",color:"aqua"},"s"]
scoreboard players display name %side_settings_border_time% side ["",{text:"边界收缩："},{nbt:"time.border_time",storage:"yw-pillar:settings",color:"aqua"},"s"]
scoreboard players display name %side_release_time% side [{text:"----- ",color:"#1bf169"},{nbt:"info.release_time",storage:"yw-pillar:system"},{text:" -----"}]