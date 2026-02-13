#vp_core:guis/souvenirs_buy/items

item replace entity @s player.cursor with air
function iframe:_clear_ender

# 翻页信息
execute store result score temp_cur int run data get storage iframe:io player.page_data.cur
execute store result score temp_total int run data get storage iframe:io player.page_data.total

# 填充GUI物品
execute if score temp_cur int matches ..1 run \
item replace entity @s enderchest.9 with black_stained_glass_pane[\
	minecraft:custom_name={\
		"text":"已到第一页",\
		"color":"gray",\
		"italic":false\
	},\
	minecraft:tooltip_display={\
		hide_tooltip:false\
	},\
	minecraft:custom_data={\
		iframe_ui:1b,\
		button:9b\
	}\
]
execute if score temp_cur int matches 2.. run \
item replace entity @s enderchest.9 with arrow[\
	minecraft:custom_name={\
		"text":"上一页",\
		"color":"gray",\
		"italic":false\
	},\
	minecraft:tooltip_display={\
		hide_tooltip:false\
	},\
	minecraft:custom_data={\
		iframe_ui:1b,\
		button:9b\
	}\
]

execute if score temp_cur int >= temp_total int run \
item replace entity @s enderchest.17 with black_stained_glass_pane[\
	minecraft:custom_name={\
		"text":"已到最后一页",\
		"color":"gray",\
		"italic":false\
	},\
	minecraft:tooltip_display={\
		hide_tooltip:false\
	},\
	minecraft:custom_data={\
		iframe_ui:1b,\
		button:17b\
	}\
]

execute if score temp_cur int < temp_total int run \
item replace entity @s enderchest.17 with arrow[\
	minecraft:custom_name={\
		"text":"下一页",\
		"color":"gray",\
		"italic":false\
	},\
	minecraft:tooltip_display={\
		hide_tooltip:false\
	},\
	minecraft:custom_data={\
		iframe_ui:1b,\
		button:17b\
	}\
]

# 加载确认按钮
item replace entity @s enderchest.12 with green_wool[\
	minecraft:custom_name={\
		"text":"确认购买",\
		"color":"green",\
		"italic":true,\
		"bold":true\
	},\
	minecraft:tooltip_display={\
		hide_tooltip:false\
	},\
	minecraft:custom_data={\
		iframe_ui:1b,\
		button:12b\
	}\
]
item replace entity @s enderchest.14 with red_wool[\
	minecraft:custom_name={\
		"text":"取消购买",\
		"color":"red",\
		"italic":true,\
		"bold":true\
	},\
	minecraft:tooltip_display={\
		hide_tooltip:false\
	},\
	minecraft:custom_data={\
		iframe_ui:1b,\
		button:14b\
	}\
]

item replace entity @s enderchest.20 with iron_ingot[\
	minecraft:custom_name={\
		"text":"普通级",\
		"color":"green",\
		"italic":false,\
		"bold":true\
	},\
	minecraft:tooltip_display={\
		hide_tooltip:false\
	},\
	minecraft:custom_data={\
		iframe_ui:1b,\
		button:20b\
	}\
]

item replace entity @s enderchest.21 with amethyst_shard[\
	minecraft:custom_name={\
		"text":"稀有级",\
		"color":"aqua",\
		"italic":false,\
		"bold":true\
	},\
	minecraft:tooltip_display={\
		hide_tooltip:false\
	},\
	minecraft:custom_data={\
		iframe_ui:1b,\
		button:21b\
	}\
]

item replace entity @s enderchest.22 with heart_of_the_sea[\
	minecraft:custom_name={\
		"text":"传说级",\
		"color":"gold",\
		"italic":false,\
		"bold":true\
	},\
	minecraft:tooltip_display={\
		hide_tooltip:false\
	},\
	minecraft:custom_data={\
		iframe_ui:1b,\
		button:22b\
	}\
]

item replace entity @s enderchest.23 with nether_star[\
	minecraft:custom_name={\
		"text":"史诗级",\
		"color":"dark_purple",\
		"italic":false,\
		"bold":true\
	},\
	minecraft:tooltip_display={\
		hide_tooltip:false\
	},\
	minecraft:custom_data={\
		iframe_ui:1b,\
		button:23b\
	}\
]

item replace entity 0-0-0-0-2 container.0 with emerald[\
	minecraft:custom_name={\
		"text":"EMERALDS: ",\
		"color":"dark_green",\
		"bold":true,\
		"extra":[\
			{"score":{"name":"test","objective":"int"}}\
		]\
	},\
	minecraft:tooltip_display={\
		hide_tooltip:false\
	},\
	minecraft:custom_data={\
		iframe_ui:1b,\
		button:25b\
	}\
]
function vp_core:emerald/_query
execute store result storage vp_core:io temp_cnt int 1 run scoreboard players get res int
function vp_core:guis/souvenirs_shop/set_emerald_cnt with storage vp_core:io {}
item replace entity @s enderchest.25 from entity 0-0-0-0-2 container.0