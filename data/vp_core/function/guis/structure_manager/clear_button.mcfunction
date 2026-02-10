#vp_core:guis/structure_manager/clear_button
# vp_core:guis/structure_manager/main调用

# 输入检测
scoreboard players set res int 0
execute if score temp_start_cnt int matches 1 \
	if score temp_end_cnt int matches 1 \
	run scoreboard players set res int 1
execute if score res int matches 0 run scoreboard players set update_gui int 1
execute unless score temp_start_cnt int matches 1 run return run tellraw @a {text:"please place start shulker.",color:"red"}
execute unless score temp_end_cnt int matches 1 run return run tellraw @a {text:"please place end shulker.",color:"red"}

# 生成area_clear构造器
data modify storage vp_core:io input set from storage vp_core:class area_clear_plate
data modify storage vp_core:io input.field_size set from storage vp_core:io field_size
data modify storage vp_core:io input.field_height set from storage vp_core:io field_height
data modify storage vp_core:io input.field_center set from storage vp_core:io field_center
function vp_core:constructors/area_clear/_new
execute as @e[tag=result,limit=1] run function marker_control:data/_get
data modify storage marker_control:io result.tick_func set value "vp_core:constructors/area_clear/main"
execute as @e[tag=result,limit=1] run function marker_control:data/_store
tag @e[tag=result,limit=1] add entity_ticked