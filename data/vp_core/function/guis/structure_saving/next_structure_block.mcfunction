#vp_core:guis/structure_saving/next_structure_block
# vp_core:guis/structure_saving/main调用

execute as @e[tag=math_marker,limit=1] run function vp_core:utils/structure_saver/_clear_structure_block

function vp_core:utils/structure_saver/_calc_total
execute store result score temp_index int run data get storage vp_core:io field_index
scoreboard players add temp_index int 1
execute if score temp_index int > res int run scoreboard players set temp_index int 0
execute store result storage vp_core:io field_index int 1 run scoreboard players get temp_index int
function vp_core:utils/structure_saver/_model
data modify storage iframe:io player.structure_saver_plate set from storage vp_core:io result
function iframe:player_space/_store

execute as @e[tag=math_marker,limit=1] run function vp_core:utils/structure_saver/_structure_block