#vp_core:guis/structure_building/main

data modify storage iframe:io inv set from entity @s Inventory
data modify storage iframe:io sel set from entity @s SelectedItem

# 加载structure_saver临时对象
function iframe:player_space/_get
data modify storage vp_core:io input set from storage iframe:io player.structure_saver_plate
function vp_core:utils/structure_saver/_proj

# 渲染结构方块区域
scoreboard players set duration int 3
execute as @e[tag=math_marker,limit=1] run function vp_core:utils/structure_saver/_render
#execute as @e[tag=vp_display] run data modify entity @s Glowing set value 1b

# 显示结构前缀
title @s actionbar [{text:"structure prefix: ",color:"gray"},{nbt:"structure_prefix",storage:"vp_core:io",color:"dark_red"}]

# 检测GUI发生变动
scoreboard players set update_gui int 0
execute unless data storage iframe:io inv[{Slot:3b}].components."minecraft:custom_data"{button:3b} run scoreboard players set update_gui int 1
execute if score update_gui int matches 1 run function vp_core:guis/structure_building/items

# 生成structure_builder构造器
execute if score @s iframe_crc_state matches 1 \
	if data storage iframe:io sel.components."minecraft:custom_data"{button:3b} \
	run function vp_core:guis/structure_building/start_building

# 退出GUI
execute if score @s iframe_crc_state matches 1 \
	if data storage iframe:io sel.components."minecraft:custom_data"{button:8b} \
	run return run function vp_core:guis/structure_building/exit
execute unless data storage iframe:io inv[{Slot:8b}].\
	components."minecraft:custom_data"{button:8b} \
	run return run function vp_core:guis/structure_building/exit