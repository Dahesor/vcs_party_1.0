#vp_core:guis/souvenirs_buy/yes
# vp_core:guis/souvenirs_buy/main调用

execute store result score inp int run data get storage iframe:io player.buy_select.price
function vp_core:emerald/_cost
data modify storage vp_core:io input set from storage iframe:io player.buy_select
data modify storage vp_core:io input.timer set from storage vp_core:io input.CD
function vp_core:souvenirs/_add
function vp_core:guis/souvenirs_buy/call_gain with storage iframe:io player.buy_select

data modify storage iframe:io player.page_data.list set value []
function iframe:player_space/_store

execute at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1.0 1.0
scoreboard players set update_gui int 1
function iframe:gui_stack/_pop