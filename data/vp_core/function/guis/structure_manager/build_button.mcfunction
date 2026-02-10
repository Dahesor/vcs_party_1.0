#vp_core:guis/structure_manager/build_button
# vp_core:guis/structure_manager/main调用

# 输入检测
scoreboard players set res int 0
execute if score temp_prefix int matches 1 \
	run scoreboard players set res int 1
execute if score res int matches 0 run scoreboard players set update_gui int 1
execute unless score temp_prefix int matches 1 run return run tellraw @a {text:"please input structure prefix.",color:"red"}

# 设置中心位置
data modify storage vp_core:io field_center set from entity @s Pos
execute store result score temp_y int run data get storage vp_core:io field_center[1]
scoreboard players remove temp_y int 48
execute if score temp_y int matches ..-65 run scoreboard players set temp_y int -64
execute store result storage vp_core:io field_center[1] double 1 run scoreboard players get temp_y int
# 加载尺寸
execute at @s run function vp_core:utils/structure_saver/_load_from_pot

# 存储结构数据
function iframe:player_space/_get
data modify storage vp_core:io field_index set value -1
function vp_core:utils/structure_saver/_model
data modify storage iframe:io player.structure_saver_plate set from storage vp_core:io result
function iframe:player_space/_store

# 当前界面入栈
function iframe:gui_stack/_push

# 下一刻跳转到structure_building界面
data modify storage iframe:io input set value "vp_core:guis/structure_building"
function iframe:_enter