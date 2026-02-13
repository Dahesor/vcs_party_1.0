#vp_core:constructors/barrier_builder/_iter
# 临时对象运行一次构造迭代
# 输出屏障表面

# 计算xyz方向面积
function vp_core:constructors/barrier_builder/_calc_area

# 获得基准位置
execute store result score temp_sx int run data get storage vp_core:io field_center[0]
execute store result score temp_sy int run data get storage vp_core:io field_center[1]
execute store result score temp_sz int run data get storage vp_core:io field_center[2]
execute store result score temp_l int run data get storage vp_core:io field_size 24
execute store result score temp_h int run data get storage vp_core:io field_height 48
scoreboard players operation temp_ex int = temp_sx int
scoreboard players operation temp_ey int = temp_sy int
scoreboard players operation temp_ez int = temp_sz int
scoreboard players operation temp_sx int -= temp_l int
scoreboard players operation temp_sz int -= temp_l int
scoreboard players operation temp_ex int += temp_l int
scoreboard players operation temp_ez int += temp_l int
scoreboard players operation temp_ey int += temp_h int
scoreboard players remove temp_sx int 1
scoreboard players remove temp_sy int 1
scoreboard players remove temp_sz int 1

# 获取尺寸数据
execute store result score temp_s int run data get storage vp_core:io field_size
execute store result score temp_h int run data get storage vp_core:io field_height

# 计算x方向表面
scoreboard players operation temp_z int = x_index int
scoreboard players operation temp_y int = temp_z int
scoreboard players operation temp_y int /= temp_s int
scoreboard players operation temp_y int *= 48 int
scoreboard players operation temp_y int += temp_sy int
execute store result storage math:io xyz[1] double 1 run scoreboard players add temp_y int 1
scoreboard players operation temp_z int %= temp_s int
scoreboard players operation temp_z int *= 48 int
scoreboard players operation temp_z int += temp_sz int
execute store result storage math:io xyz[2] double 1 run scoreboard players add temp_z int 1
execute store result storage math:io xyz[0] double 1 run scoreboard players get temp_sx int
data modify entity @s Pos set from storage math:io xyz
execute at @s run fill ~ ~ ~ ~ ~47 ~47 barrier
execute store result storage math:io xyz[0] double 1 run scoreboard players get temp_ex int
data modify entity @s Pos set from storage math:io xyz
execute at @s run fill ~ ~ ~ ~ ~47 ~47 barrier

# x方向序号迭代
execute if score x_index int < x_area int run scoreboard players add x_index int 1
scoreboard players operation vp_progress int = x_index int
scoreboard players operation vp_progress int *= 100 int
scoreboard players operation vp_progress int /= x_area int
execute if score x_index int = x_area int run scoreboard players remove x_index int 1

# 计算z方向表面
scoreboard players operation temp_x int = z_index int
scoreboard players operation temp_y int = temp_x int
scoreboard players operation temp_y int /= temp_s int
scoreboard players operation temp_y int *= 48 int
scoreboard players operation temp_y int += temp_sy int
execute store result storage math:io xyz[1] double 1 run scoreboard players add temp_y int 1
scoreboard players operation temp_x int %= temp_s int
scoreboard players operation temp_x int *= 48 int
scoreboard players operation temp_x int += temp_sx int
execute store result storage math:io xyz[0] double 1 run scoreboard players add temp_x int 1
execute store result storage math:io xyz[2] double 1 run scoreboard players get temp_sz int
data modify entity @s Pos set from storage math:io xyz
execute at @s run fill ~ ~ ~ ~47 ~47 ~ barrier
execute store result storage math:io xyz[2] double 1 run scoreboard players get temp_ez int
data modify entity @s Pos set from storage math:io xyz
execute at @s run fill ~ ~ ~ ~47 ~47 ~ barrier

# z方向序号迭代
execute if score z_index int < z_area int run scoreboard players add z_index int 1
scoreboard players operation z_index int %= z_area int
execute if score z_index int = z_area int run scoreboard players remove z_index int 1

# 计算y方向表面
scoreboard players operation temp_x int = y_index int
scoreboard players operation temp_z int = temp_x int
scoreboard players operation temp_z int /= temp_s int
scoreboard players operation temp_z int *= 48 int
scoreboard players operation temp_z int += temp_sz int
execute store result storage math:io xyz[2] double 1 run scoreboard players add temp_z int 1
scoreboard players operation temp_x int %= temp_s int
scoreboard players operation temp_x int *= 48 int
scoreboard players operation temp_x int += temp_sx int
execute store result storage math:io xyz[0] double 1 run scoreboard players add temp_x int 1
execute store result storage math:io xyz[1] double 1 run scoreboard players get temp_sy int
data modify entity @s Pos set from storage math:io xyz
execute at @s run fill ~ ~ ~ ~47 ~ ~47 barrier
execute store result storage math:io xyz[1] double 1 run scoreboard players get temp_ey int
data modify entity @s Pos set from storage math:io xyz
execute at @s run fill ~ ~ ~ ~47 ~ ~47 barrier

# y方向序号迭代
execute if score y_index int < y_area int run scoreboard players add y_index int 1
scoreboard players operation temp_p int = y_index int
scoreboard players operation temp_p int *= 100 int
scoreboard players operation temp_p int /= y_area int
execute if score y_index int = y_area int run scoreboard players remove y_index int 1
scoreboard players operation vp_progress int < temp_p int
scoreboard players operation vp_progress int > 1 int

# 区块安全
tp @s 0 0 0