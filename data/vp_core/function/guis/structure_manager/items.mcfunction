#vp_core:guis/structure_manager/items

function iframe:player_space/_get

clear @s

# 填充GUI物品
item replace entity @s hotbar.0 with minecraft:shulker_spawn_egg[\
	minecraft:entity_data={\
		id:"minecraft:shulker",\
		NoAI:1b,\
		Silent:1b,\
		Color:5b,\
		Tags:["vp_structure_point","structure_start"],\
		CustomName:"structure_start",\
		CustomNameVisible:1b,\
		DeathLootTable:""\
	},\
	minecraft:custom_name={\
		text:"structure_start",\
		color:"green"\
	},\
	minecraft:custom_data={\
		iframe_ui:1b,\
		button:0b\
	}\
]

item replace entity @s hotbar.1 with minecraft:shulker_spawn_egg[\
	minecraft:entity_data={\
		id:"minecraft:shulker",\
		NoAI:1b,\
		Silent:1b,\
		Color:14b,\
		Tags:["vp_structure_point","structure_end"],\
		CustomName:"structure_end",\
		CustomNameVisible:1b,\
		DeathLootTable:""\
	},\
	minecraft:custom_name={\
		text:"structure_end",\
		color:"red"\
	},\
	minecraft:custom_data={\
		iframe_ui:1b,\
		button:1b\
	}\
]

item replace entity @s hotbar.2 with minecraft:iron_sword[\
	minecraft:enchantments={\
		"minecraft:sharpness":255\
	},\
	minecraft:custom_data={\
		iframe_ui:1b,\
		button:2b\
	}\
]

execute if data storage iframe:io player.prefix_book run data modify entity 0-0-0-0-2 item set from storage iframe:io player.prefix_book
execute if data storage iframe:io player.prefix_book run item replace entity @s hotbar.3 from entity 0-0-0-0-2 container.0
execute unless data storage iframe:io player.prefix_book run \
item replace entity @s hotbar.3 with minecraft:writable_book[\
	minecraft:custom_name={\
		text:"input structure prefix",\
		color:"gray"\
	},\
	minecraft:custom_data={\
		iframe_ui:1b,\
		button:3b\
	}\
]

item replace entity @s hotbar.4 with minecraft:music_disc_cat[\
	minecraft:custom_name={\
		text:"save structure",\
		color:"green"\
	},\
	minecraft:custom_data={\
		iframe_ui:1b,\
		button:4b\
	},\
	minecraft:consumable={\
		consume_seconds:1024.0f\
	}\
]

item replace entity @s hotbar.5 with minecraft:iron_pickaxe[\
	minecraft:custom_name={\
		text:"build structure",\
		color:"gold"\
	},\
	minecraft:custom_data={\
		iframe_ui:1b,\
		button:5b\
	},\
	minecraft:consumable={\
		consume_seconds:1024.0f\
	}\
]

item replace entity @s hotbar.6 with minecraft:brush[\
	minecraft:custom_name={\
		text:"clear area",\
		color:"red"\
	},\
	minecraft:custom_data={\
		iframe_ui:1b,\
		button:6b\
	},\
	minecraft:consumable={\
		consume_seconds:1024.0f\
	}\
]

item replace entity @s hotbar.7 with minecraft:shulker_spawn_egg[\
	minecraft:entity_data={\
		id:"minecraft:shulker",\
		NoAI:1b,\
		Silent:1b,\
		Color:10b,\
		Tags:["vp_map_point","map_point"],\
		CustomName:"map_point",\
		CustomNameVisible:1b,\
		DeathLootTable:""\
	},\
	minecraft:custom_name={\
		text:"map_point",\
		color:"dark_purple"\
	},\
	minecraft:custom_data={\
		iframe_ui:1b,\
		button:7b\
	}\
]

item replace entity @s hotbar.8 with minecraft:clay_ball[\
	minecraft:custom_data={\
		iframe_ui:1b,\
		button:8b\
	},\
	minecraft:custom_name={\
		text:"exit",\
		color:"red"\
	},\
	minecraft:item_model="minecraft:barrier",\
	minecraft:consumable={\
		consume_seconds:1024.0f\
	}\
]