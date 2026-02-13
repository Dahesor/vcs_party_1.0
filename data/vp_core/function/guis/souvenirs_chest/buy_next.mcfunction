#vp_core:guis/souvenirs_chest/buy_next
# vp_core:guis/souvenirs_chest/buy_check调用

scoreboard players set update_gui int 1

$data modify storage iframe:io player.buy_select set from storage iframe:io player.page_data.list[$(temp_index)]
function iframe:player_space/_store
execute unless data storage iframe:io player.buy_select{timer:0} run return run playsound minecraft:entity.villager.no player @s ~ ~ ~ 1.0 1.0

execute at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1.0 1.5
data modify storage vp_core:io input set from storage iframe:io player.buy_select.prefix
function vp_core:souvenirs/_gain
function vp_core:souvenirs/_reset_cd