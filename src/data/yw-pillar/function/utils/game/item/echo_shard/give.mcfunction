advancement revoke @s only yw-pillar:game/item/echo_shard/give

clear @s echo_shard[!consumable] 1

give @s echo_shard[item_name={text:"回响碎片"},lore=[{text:"右键发射",color:"gray",italic:false}],consumable={animation:"none",consume_seconds:0.1,has_consume_particles:false,sound:"entity.warden.sonic_boom"},custom_data={"item":"echo_shard"}]