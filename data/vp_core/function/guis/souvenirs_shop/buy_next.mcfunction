#vp_core:guis/souvenirs_shop/buy_next
# vp_core:guis/souvenirs_shop/buy_check调用

scoreboard players set update_gui int 1

$data modify storage iframe:io player.buy_select set from storage iframe:io player.page_data.list[$(temp_index)]
function iframe:player_space/_store
execute if data storage iframe:io player.buy_select.buy_check run return fail
function vp_core:emerald/_query
execute store result score temp_price int run data get storage iframe:io player.buy_select.price
execute if score res int < temp_price int at @s run return run playsound minecraft:entity.villager.no player @s ~ ~ ~ 1.0 1.0

execute at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1.0 1.5
function iframe:gui_stack/_push
data modify storage iframe:io input set value "vp_core:guis/souvenirs_buy"
function iframe:_enter