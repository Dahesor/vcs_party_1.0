#vp_core:guis/structure_saving/main

data modify storage iframe:io inv set from entity @s Inventory
data modify storage iframe:io sel set from entity @s SelectedItem

# 加载structure_saver临时对象
function iframe:player_space/_get
data modify storage vp_core:io input set from storage iframe:io player.structure_saver_plate
function vp_core:utils/structure_saver/_proj

# 渲染结构方块区域
scoreboard players set duration int 3
execute as @e[tag=math_marker,limit=1] run function vp_core:utils/structure_saver/_render

# 显示结构前缀
title @s actionbar [{text:"structure prefix: ",color:"gray"},{nbt:"structure_prefix",storage:"vp_core:io",color:"dark_red"}]

# 重新开始保存
execute if score @s iframe_crc_state matches 1 \
	if data storage iframe:io sel.components."minecraft:custom_data"{button:2b} \
	run function vp_core:guis/structure_saving/clear_structure_block

# 切换结构方块
execute if score @s iframe_crc_state matches 1 \
	if data storage iframe:io sel.components."minecraft:custom_data"{button:3b} \
	run function vp_core:guis/structure_saving/next_structure_block

# 传送到结构方块
tag @s add tmp
execute if score @s iframe_crc_state matches 1 \
	if data storage iframe:io sel.components."minecraft:custom_data"{button:4b} \
	at @s as @e[tag=math_marker,limit=1] \
	run function vp_core:guis/structure_saving/tp_structure_block

# 自动切换结构方块
execute store result score temp_index int run data get storage vp_core:io field_index
execute if score temp_index int matches 0.. as @e[tag=math_marker,limit=1] run function vp_core:guis/structure_saving/auto_next
tag @s remove tmp

# 检测GUI发生变动
scoreboard players set update_gui int 0
execute unless data storage iframe:io inv[{Slot:2b}].components."minecraft:custom_data"{button:2b} run scoreboard players set update_gui int 1
execute unless data storage iframe:io inv[{Slot:3b}].components."minecraft:custom_data"{button:3b} run scoreboard players set update_gui int 1
execute unless data storage iframe:io inv[{Slot:4b}].components."minecraft:custom_data"{button:4b} run scoreboard players set update_gui int 1
execute if score update_gui int matches 1 run function vp_core:guis/structure_saving/items

# 退出GUI
execute if score @s iframe_crc_state matches 1 \
	if data storage iframe:io sel.components."minecraft:custom_data"{button:8b} \
	run return run function vp_core:guis/structure_saving/exit
execute unless data storage iframe:io inv[{Slot:8b}].\
	components."minecraft:custom_data"{button:8b} \
	run return run function vp_core:guis/structure_saving/exit