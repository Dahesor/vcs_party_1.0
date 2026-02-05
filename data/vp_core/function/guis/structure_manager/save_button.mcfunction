#vp_core:guis/structure_manager/save_button
# vp_core:guis/structure_manager/main调用

# 输入检测
scoreboard players set res int 0
execute if score temp_start_cnt int matches 1 \
	if score temp_end_cnt int matches 1 \
	if score temp_prefix int matches 1 \
	run scoreboard players set res int 1
execute if score res int matches 0 run scoreboard players set update_gui int 1
execute unless score temp_start_cnt int matches 1 run return run tellraw @a {text:"please place start shulker.",color:"red"}
execute unless score temp_end_cnt int matches 1 run return run tellraw @a {text:"please place end shulker.",color:"red"}
execute unless score temp_prefix int matches 1 run return run tellraw @a {text:"please input structure prefix.",color:"red"}

# 存储结构数据
function iframe:player_space/_get
data modify storage vp_core:io field_index set value -1
function vp_core:utils/structure_saver/_model
data modify storage iframe:io player.structure_saver_plate set from storage vp_core:io result
function iframe:player_space/_store

# 当前界面入栈
function iframe:gui_stack/_push

# 下一刻跳转到structure_saving界面
data modify storage iframe:io input set value "vp_core:guis/structure_saving"
function iframe:_enter