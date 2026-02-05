#vp_core:utils/structure_saver/shift_z_n
# vp_core:utils/structure_saver/_structure_block调用
# vp_core:utils/structure_saver/_position_structure_block调用

execute at @s run tp @s ~ ~ ~-48
scoreboard players add temp_z int 48
execute if score temp_z int matches ..-49 run function vp_core:utils/structure_saver/shift_z_n