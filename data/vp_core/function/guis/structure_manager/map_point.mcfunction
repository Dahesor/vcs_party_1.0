#vp_core:guis/structure_manager/map_point
# vp_core:guis/structure_manager/main调用

execute store result score temp_sx int run data get storage vp_core:io field_center[0] 10
execute store result score temp_sy int run data get storage vp_core:io field_center[1] 10
execute store result score temp_sz int run data get storage vp_core:io field_center[2] 10
data modify storage math:io xyz set from entity @s Pos
execute store result score temp_x int run data get storage math:io xyz[0] 10
execute store result score temp_y int run data get storage math:io xyz[1] 10
execute store result score temp_z int run data get storage math:io xyz[2] 10
execute store result storage math:io xyz[0] double 0.1 run scoreboard players operation temp_x int -= temp_sx int
execute store result storage math:io xyz[1] double 0.1 run scoreboard players operation temp_y int -= temp_sy int
execute store result storage math:io xyz[2] double 0.1 run scoreboard players operation temp_z int -= temp_sz int
tellraw @a ["",{"text":"map_point: ","bold":true,"color":"dark_purple"}, {"nbt":"xyz","storage":"math:io","color":"gray"}]
kill @s