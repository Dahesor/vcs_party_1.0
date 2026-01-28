#vp_core:utils/chunk_area/unload_sloop
# vp_core:utils/chunk_area/unload_loop调用

scoreboard players operation temp_sx int = temp_x_min int
scoreboard players operation temp_sy int = temp_y int
scoreboard players operation temp_max int = temp_sx int
scoreboard players operation temp_max int > temp_sy int
scoreboard players operation temp_min int = temp_sx int
scoreboard players operation temp_min int < temp_sy int
scoreboard players operation temp_sx int *= 16 int
scoreboard players operation temp_sy int *= 16 int
execute store result storage math:io xyz[0] double 1 run scoreboard players add temp_sx int 8
execute store result storage math:io xyz[2] double 1 run scoreboard players add temp_sy int 8
data modify entity @s Pos set from storage math:io xyz
scoreboard players set temp_res int 1
execute if score temp_max int matches ..0 if score temp_min int matches -1.. run scoreboard players set temp_res int 0
execute if score temp_res int matches 1 at @s run forceload remove ~ ~

scoreboard players add temp_y int 1
execute if score temp_y int <= temp_y_max int run function vp_core:utils/chunk_area/unload_sloop