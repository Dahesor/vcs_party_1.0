#vp_core:guis/structure_manager/sync_saver
# vp_core:guis/structure_manager/main调用

# vp_structure_saver等待写入
function vp_core:utils/structure_saver/_zero

# 获取潜影贝坐标
execute as @e[tag=vp_structure_point,tag=structure_start,limit=1] run data modify storage math:io xyz set from entity @s Pos
execute store result score temp_start_x int run data get storage math:io xyz[0] 10
execute store result score temp_start_y int run data get storage math:io xyz[1] 10
execute store result score temp_start_z int run data get storage math:io xyz[2] 10
execute as @e[tag=vp_structure_point,tag=structure_end,limit=1] run data modify storage math:io xyz set from entity @s Pos
execute store result score temp_end_x int run data get storage math:io xyz[0] 10
execute store result score temp_end_y int run data get storage math:io xyz[1] 10
execute store result score temp_end_z int run data get storage math:io xyz[2] 10

# 计算水平尺寸
scoreboard players operation temp_size int = temp_end_x int
scoreboard players operation temp_size int -= temp_start_x int
execute if score temp_size int matches ..-1 run scoreboard players operation temp_size int *= -1 int
scoreboard players operation temp_size_z int = temp_end_z int
scoreboard players operation temp_size_z int -= temp_start_z int
execute if score temp_size_z int matches ..-1 run scoreboard players operation temp_size_z int *= -1 int
scoreboard players operation temp_size int > temp_size_z int
scoreboard players operation temp_size int /= 10 int
scoreboard players add temp_size int 47
execute store result storage vp_core:io field_size int 1 run scoreboard players operation temp_size int /= 48 int

# 计算高度尺寸
scoreboard players operation temp_size int = temp_end_y int
scoreboard players operation temp_size int -= temp_start_y int
execute if score temp_size int matches ..-1 run scoreboard players operation temp_size int *= -1 int
scoreboard players operation temp_size int /= 10 int
scoreboard players add temp_size int 47
execute store result storage vp_core:io field_height int 1 run scoreboard players operation temp_size int /= 48 int

# 计算中心坐标
scoreboard players operation temp_y int = temp_start_y int
execute store result storage vp_core:io field_center[1] double 0.1 run scoreboard players operation temp_y int < temp_end_y int
scoreboard players operation temp_x int = temp_end_x int
scoreboard players operation temp_x int -= temp_start_x int
scoreboard players operation temp_x int /= 2 int
execute store result storage vp_core:io field_center[0] double 0.1 run scoreboard players operation temp_x int += temp_start_x int
scoreboard players operation temp_z int = temp_end_z int
scoreboard players operation temp_z int -= temp_start_z int
scoreboard players operation temp_z int /= 2 int
execute store result storage vp_core:io field_center[2] double 0.1 run scoreboard players operation temp_z int += temp_start_z int

# 渲染结构区域
scoreboard players set duration int 3
execute as @e[tag=math_marker,limit=1] run function vp_core:utils/structure_saver/_render