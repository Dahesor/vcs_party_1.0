#vp_core:guis/souvenirs_buy/no
# vp_core:guis/souvenirs_buy/main调用

execute at @s run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1.0 0.5
scoreboard players set update_gui int 1
function iframe:gui_stack/_pop