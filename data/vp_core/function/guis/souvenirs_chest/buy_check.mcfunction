#vp_core:guis/souvenirs_chest/buy_check
# vp_core:guis/souvenirs_chest/main调用

execute if score @s vp_modular matches 3 run function vp_core:guis/souvenirs_chest/update_check

scoreboard players set temp_buy int -1

execute unless data storage iframe:io ender[{Slot:16b}].components."minecraft:custom_data"{iframe_ui:1b} \
	run scoreboard players set temp_buy int 13
execute unless data storage iframe:io ender[{Slot:15b}].components."minecraft:custom_data"{iframe_ui:1b} \
	run scoreboard players set temp_buy int 12
execute unless data storage iframe:io ender[{Slot:14b}].components."minecraft:custom_data"{iframe_ui:1b} \
	run scoreboard players set temp_buy int 11
execute unless data storage iframe:io ender[{Slot:13b}].components."minecraft:custom_data"{iframe_ui:1b} \
	run scoreboard players set temp_buy int 10
execute unless data storage iframe:io ender[{Slot:12b}].components."minecraft:custom_data"{iframe_ui:1b} \
	run scoreboard players set temp_buy int 9
execute unless data storage iframe:io ender[{Slot:11b}].components."minecraft:custom_data"{iframe_ui:1b} \
	run scoreboard players set temp_buy int 8
execute unless data storage iframe:io ender[{Slot:10b}].components."minecraft:custom_data"{iframe_ui:1b} \
	run scoreboard players set temp_buy int 7

execute unless data storage iframe:io ender[{Slot:7b}].components."minecraft:custom_data"{iframe_ui:1b} \
	run scoreboard players set temp_buy int 6
execute unless data storage iframe:io ender[{Slot:6b}].components."minecraft:custom_data"{iframe_ui:1b} \
	run scoreboard players set temp_buy int 5
execute unless data storage iframe:io ender[{Slot:5b}].components."minecraft:custom_data"{iframe_ui:1b} \
	run scoreboard players set temp_buy int 4
execute unless data storage iframe:io ender[{Slot:4b}].components."minecraft:custom_data"{iframe_ui:1b} \
	run scoreboard players set temp_buy int 3
execute unless data storage iframe:io ender[{Slot:3b}].components."minecraft:custom_data"{iframe_ui:1b} \
	run scoreboard players set temp_buy int 2
execute unless data storage iframe:io ender[{Slot:2b}].components."minecraft:custom_data"{iframe_ui:1b} \
	run scoreboard players set temp_buy int 1
execute unless data storage iframe:io ender[{Slot:1b}].components."minecraft:custom_data"{iframe_ui:1b} \
	run scoreboard players set temp_buy int 0

execute if score temp_buy int >= temp_len int run scoreboard players set temp_buy int -1

execute store result storage iframe:io temp_index int 1 run scoreboard players get temp_buy int
execute if score temp_buy int matches 0.. run function vp_core:guis/souvenirs_chest/buy_next with storage iframe:io {}