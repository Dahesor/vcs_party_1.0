#vp_core:utils/structure_saver/_place_structure
# 以field_center为中心清空field_index指向的结构
# 占用temp{<temp_x,int>,<temp_y,int>,<temp_z,int>,<temp_sx,int>,<temp_sy,int>,<temp_sz,int>,<temp_l,int>,<temp_s,int>,<temp_h,int>,<temp_area,int>,<temp_volume,int>,<temp_i,int>}
# 占用[storage math:io xyz,ListDouble,3]
# 输出空气区域
# 需要传入世界实体

# 获得基准位置
execute store result score temp_sx int run data get storage vp_core:io field_center[0]
execute store result score temp_sy int run data get storage vp_core:io field_center[1]
execute store result score temp_sz int run data get storage vp_core:io field_center[2]
execute store result score temp_l int run data get storage vp_core:io field_size 24
scoreboard players operation temp_sz int -= temp_l int
scoreboard players operation temp_sx int -= temp_l int

# 计算结构位置
execute store result score temp_s int run data get storage vp_core:io field_size
execute store result score temp_h int run data get storage vp_core:io field_height
scoreboard players operation temp_area int = temp_s int
scoreboard players operation temp_area int *= temp_area int
scoreboard players operation temp_volume int = temp_area int
scoreboard players operation temp_volume int *= temp_h int
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
scoreboard players operation temp_x int += temp_sx int
scoreboard players operation temp_y int += temp_sy int
scoreboard players operation temp_z int += temp_sz int

# 访问结构位置
execute store result storage math:io xyz[0] double 1 run scoreboard players get temp_x int
execute store result storage math:io xyz[1] double 1 run scoreboard players get temp_y int
execute store result storage math:io xyz[2] double 1 run scoreboard players get temp_z int
data modify entity @s Pos set from storage math:io xyz
# 生成结构
execute at @s run place template vp_core:void ~ ~ ~

# 区块安全
tp @s 0 0 0