#vp_core:guis/souvenirs_buy/main

function iframe:player_space/_get

data modify storage iframe:io ender set from entity @s EnderItems
data modify storage iframe:io inv set from entity @s Inventory
execute if data storage iframe:io inv[{components:{"minecraft:custom_data":{iframe_ui:1b}}}] run clear @s *[minecraft:custom_data~{iframe_ui:1b}]

# 检测GUI发生变动
scoreboard players set update_gui int 0
data modify storage iframe:io input set from storage iframe:io ender
data remove storage iframe:io input[{components:{"minecraft:custom_data":{iframe_ui:1b}}}]
execute if data storage iframe:io input[0] at @s run function iframe:_drop_items

execute unless data storage iframe:io ender[{Slot:9b}].components."minecraft:custom_data"{button:9b} run scoreboard players set update_gui int 1
execute unless data storage iframe:io ender[{Slot:12b}].components."minecraft:custom_data"{button:12b} run function vp_core:guis/souvenirs_buy/yes
execute unless data storage iframe:io ender[{Slot:14b}].components."minecraft:custom_data"{button:14b} run function vp_core:guis/souvenirs_buy/no
execute unless data storage iframe:io ender[{Slot:17b}].components."minecraft:custom_data"{button:17b} run scoreboard players set update_gui int 1
execute unless data storage iframe:io ender[{Slot:20b}].components."minecraft:custom_data"{button:20b} run scoreboard players set update_gui int 1
execute unless data storage iframe:io ender[{Slot:21b}].components."minecraft:custom_data"{button:21b} run scoreboard players set update_gui int 1
execute unless data storage iframe:io ender[{Slot:22b}].components."minecraft:custom_data"{button:22b} run scoreboard players set update_gui int 1
execute unless data storage iframe:io ender[{Slot:23b}].components."minecraft:custom_data"{button:23b} run scoreboard players set update_gui int 1
execute unless data storage iframe:io ender[{Slot:25b}].components."minecraft:custom_data"{button:25b} run scoreboard players set update_gui int 1
execute if score update_gui int matches 1 run function vp_core:guis/souvenirs_buy/items

# 运动检测计时
execute store result score temp_timer int run data get storage iframe:io player.move_timer
execute store result storage iframe:io player.move_timer int 1 run scoreboard players add temp_timer int 1
function iframe:player_space/_store

# 记录运动初始信息
execute if score temp_timer int matches 40 run function iframe:_move_rec

scoreboard players set res int 0
# 检测是否发生运动
execute if score temp_timer int matches 41.. run function iframe:_move_check
execute if score temp_timer int matches 41.. if score res int matches 35.. run scoreboard players set res int -1
execute at @s unless entity @e[tag=vp_ender_gui,distance=..7] run scoreboard players set res int -1
# 退出GUI
execute if score res int matches -1 run function vp_core:guis/souvenirs_shop/exit