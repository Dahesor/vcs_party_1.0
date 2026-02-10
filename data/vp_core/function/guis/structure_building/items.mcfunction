#vp_core:guis/structure_building/items

clear @s

# 填充GUI物品
item replace entity @s hotbar.3 with minecraft:clay_ball[\
	minecraft:custom_data={\
		iframe_ui:1b,\
		button:3b\
	},\
	minecraft:custom_name={\
		text:"start building",\
		color:"red"\
	},\
	minecraft:item_model="minecraft:structure_block",\
	minecraft:consumable={\
		consume_seconds:1024.0f\
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