#vp_core:guis/structure_manager/main

data modify storage iframe:io inv set from entity @s Inventory
data modify storage iframe:io sel set from entity @s SelectedItem

# 限制潜影贝数量
execute store result score temp_start_cnt int if entity @e[tag=vp_structure_point,tag=structure_start]
execute store result score temp_end_cnt int if entity @e[tag=vp_structure_point,tag=structure_end]
execute if score temp_start_cnt int matches 2.. run function vp_core:guis/structure_manager/kill_start_loop
execute if score temp_end_cnt int matches 2.. run function vp_core:guis/structure_manager/kill_end_loop

# 同步结构区域
execute if score temp_start_cnt int matches 1 if score temp_end_cnt int matches 1 run function vp_core:guis/structure_manager/sync_saver
# 读取结构前缀
execute if data storage iframe:io inv[{Slot:3b,id:"minecraft:writable_book"}] run function vp_core:guis/structure_manager/read_prefix

# 检测GUI发生变动
scoreboard players set update_gui int 0
execute unless data storage iframe:io inv[{Slot:0b}].components."minecraft:custom_data"{button:0b} run scoreboard players set update_gui int 1
execute unless data storage iframe:io inv[{Slot:1b}].components."minecraft:custom_data"{button:1b} run scoreboard players set update_gui int 1
execute unless data storage iframe:io inv[{Slot:2b}].components."minecraft:custom_data"{button:2b} run scoreboard players set update_gui int 1
execute unless data storage iframe:io inv[{Slot:3b}].components."minecraft:custom_data"{button:3b} run scoreboard players set update_gui int 1
execute unless data storage iframe:io inv[{Slot:4b}].components."minecraft:custom_data"{button:4b} run scoreboard players set update_gui int 1
execute unless data storage iframe:io inv[{Slot:5b}].components."minecraft:custom_data"{button:5b} run scoreboard players set update_gui int 1
execute unless data storage iframe:io inv[{Slot:6b}].components."minecraft:custom_data"{button:6b} run scoreboard players set update_gui int 1
execute unless data storage iframe:io inv[{Slot:7b}].components."minecraft:custom_data"{button:7b} run scoreboard players set update_gui int 1
execute if data storage iframe:io inv[{Slot:3b,id:"minecraft:written_book"}] run scoreboard players set update_gui int 1

# 存储结构按钮
execute if score @s iframe_crc_state matches 1 \
	if data storage iframe:io sel.components."minecraft:custom_data"{button:4b} \
	run function vp_core:guis/structure_manager/save_button

# 建造结构按钮
execute if score @s iframe_crc_state matches 1 \
	if data storage iframe:io sel.components."minecraft:custom_data"{button:5b} \
	run function vp_core:guis/structure_manager/build_button

# 清理区域按钮
execute if score @s iframe_crc_state matches 1 \
	if data storage iframe:io sel.components."minecraft:custom_data"{button:6b} \
	run function vp_core:guis/structure_manager/clear_button

# 地图传送点
execute as @e[tag=vp_map_point] run function vp_core:guis/structure_manager/map_point

execute if score update_gui int matches 1 run function vp_core:guis/structure_manager/items

# 退出GUI
execute if score @s iframe_crc_state matches 1 \
	if data storage iframe:io sel.components."minecraft:custom_data"{button:8b} \
	run return run function vp_core:guis/structure_manager/exit
execute unless data storage iframe:io inv[{Slot:8b}].\
	components."minecraft:custom_data"{button:8b} \
	run return run function vp_core:guis/structure_manager/exit