#vp_core:guis/souvenirs_chest/exit
# vp_core:guis/souvenirs_chest/main调用

scoreboard players operation tempid int = @s vp_player_id
execute at @s as @e[tag=vp_ender_gui,distance=..7] \
	if score @s int = tempid int \
	run function vp_core:utils/ender_gui/_del

function iframe:_re_ender
function iframe:_exit_pure

execute at @s run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1.0 1.5

scoreboard players set update_gui int 1