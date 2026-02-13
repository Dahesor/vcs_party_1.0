#vp_core:summon_ender_3
# vp_core:shift_start调用

data modify storage vp_core:io input set value {\
	open_gui:"vp_core:guis/souvenirs_chest",\
	custom_name:{"text":"获取纪念品","bold":true,"color":"gray"}\
}
function vp_core:utils/ender_gui/_new
execute at @s as @e[tag=result,limit=1] run function vp_core:utils/ender_gui/_facing_here
execute as @e[tag=result,limit=1] run function marker_control:data/_get
data modify storage marker_control:io result.tick_func set value "vp_core:utils/ender_gui/main"
execute as @e[tag=result,limit=1] run function marker_control:data/_store
tag @e[tag=result,limit=1] add entity_ticked
scoreboard players operation @e[tag=result,limit=1] int = @s vp_player_id

playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1.0 1.0