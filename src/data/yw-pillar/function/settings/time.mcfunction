$data modify storage yw-pillar:settings time set value \
{\
    loot_time:$(loot_time),\
    event_time:$(event_time),\
    border_time:$(border_time),\
    begin_time:$(begin_time)\
}

function yw-pillar:game/sidebar/lobby

tellraw @a ["",{text:"[Tips]",color:"gold",bold:true},{selector:"@s",bold:true},{text:"已修改设置！",color:"aqua"}]

