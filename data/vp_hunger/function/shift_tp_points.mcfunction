#vp_hunger:shift_tp_points
# vp_hunger:_get_tp_points调用

execute store result score temp_dx int run data get storage vp_hunger:io result[0][0] 10
execute store result score temp_dy int run data get storage vp_hunger:io result[0][1] 10
execute store result score temp_dz int run data get storage vp_hunger:io result[0][2] 10
execute store result storage vp_hunger:io result[0][0] double 0.1 run scoreboard players operation temp_dx int += temp_x int
execute store result storage vp_hunger:io result[0][1] double 0.1 run scoreboard players operation temp_dy int += temp_y int
execute store result storage vp_hunger:io result[0][2] double 0.1 run scoreboard players operation temp_dz int += temp_z int

data modify storage vp_hunger:io result append from storage vp_hunger:io result[0]
data remove storage vp_hunger:io result[0]
scoreboard players remove loop int 1
execute if score loop int matches 1.. run function vp_hunger:shift_tp_points