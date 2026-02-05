#vp_core:utils/structure_saver/_position_structure_block
# 定位结构方块
# 占用temp{<temp_x,int>,<temp_y,int>,<temp_z,int>,<temp_l,int>}
# 占用[storage math:io xyz,ListDouble,3]
# 输入传送实体
# 输出传送实体位置

# 获得结构方块位置
execute store result score temp_x int run data get storage vp_core:io field_center[0]
execute store result score temp_y int run data get storage vp_core:io field_center[1]
execute store result score temp_z int run data get storage vp_core:io field_center[2]
execute store result score temp_l int run data get storage vp_core:io field_size 24
scoreboard players operation temp_z int -= temp_l int
scoreboard players remove temp_y int 1
scoreboard players remove temp_z int 3
execute store result storage math:io xyz[0] double 1 run scoreboard players get temp_x int
execute store result storage math:io xyz[1] double 1 run scoreboard players get temp_y int
execute store result storage math:io xyz[2] double 1 run scoreboard players get temp_z int
data modify entity @s Pos set from storage math:io xyz

# 获得结构总数量
execute store result score temp_s int run data get storage vp_core:io field_size
execute store result score temp_h int run data get storage vp_core:io field_height
scoreboard players operation temp_area int = temp_s int
scoreboard players operation temp_area int *= temp_area int
scoreboard players operation temp_volume int = temp_area int
scoreboard players operation temp_volume int *= temp_h int

# 设置保存位置
execute store result score temp_i int run data get storage vp_core:io field_index
scoreboard players operation temp_y int = temp_i int
scoreboard players operation temp_x int = temp_y int
scoreboard players operation temp_y int /= temp_area int
scoreboard players operation temp_x int %= temp_area int
scoreboard players operation temp_z int = temp_x int
scoreboard players operation temp_x int /= temp_s int
scoreboard players operation temp_z int %= temp_s int
scoreboard players operation temp_x int *= 48 int
scoreboard players operation temp_y int *= 48 int
scoreboard players operation temp_z int *= 48 int
scoreboard players operation temp_x int -= temp_l int
scoreboard players add temp_z int 3
scoreboard players add temp_y int 1
execute if score temp_i int = temp_volume int \
	store result score temp_x int \
	store result score temp_y int \
	store result score temp_z int \
	run scoreboard players get 0 int
execute if score temp_x int matches 49.. run function vp_core:utils/structure_saver/shift_x_p
execute if score temp_x int matches ..-49 run function vp_core:utils/structure_saver/shift_x_n
execute if score temp_y int matches 49.. run function vp_core:utils/structure_saver/shift_y_p
execute if score temp_z int matches 49.. run function vp_core:utils/structure_saver/shift_z_p
execute if score temp_z int matches ..-49 run function vp_core:utils/structure_saver/shift_z_n