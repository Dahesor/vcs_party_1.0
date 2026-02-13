#vp_core:guis/souvenirs_shop/items

execute at @s run function iframe:_drop_cursor
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

# 加载货架
data modify entity 0-0-0-0-2 item set from storage iframe:io player.page_data.list[0]
execute if data storage iframe:io player.page_data.list[0] run item replace entity @s enderchest.1 from entity 0-0-0-0-2 container.0
data modify entity 0-0-0-0-2 item set from storage iframe:io player.page_data.list[1]
execute if data storage iframe:io player.page_data.list[1] run item replace entity @s enderchest.2 from entity 0-0-0-0-2 container.0
data modify entity 0-0-0-0-2 item set from storage iframe:io player.page_data.list[2]
execute if data storage iframe:io player.page_data.list[2] run item replace entity @s enderchest.3 from entity 0-0-0-0-2 container.0
data modify entity 0-0-0-0-2 item set from storage iframe:io player.page_data.list[3]
execute if data storage iframe:io player.page_data.list[3] run item replace entity @s enderchest.4 from entity 0-0-0-0-2 container.0
data modify entity 0-0-0-0-2 item set from storage iframe:io player.page_data.list[4]
execute if data storage iframe:io player.page_data.list[4] run item replace entity @s enderchest.5 from entity 0-0-0-0-2 container.0
data modify entity 0-0-0-0-2 item set from storage iframe:io player.page_data.list[5]
execute if data storage iframe:io player.page_data.list[5] run item replace entity @s enderchest.6 from entity 0-0-0-0-2 container.0
data modify entity 0-0-0-0-2 item set from storage iframe:io player.page_data.list[6]
execute if data storage iframe:io player.page_data.list[6] run item replace entity @s enderchest.7 from entity 0-0-0-0-2 container.0
data modify entity 0-0-0-0-2 item set from storage iframe:io player.page_data.list[7]
execute if data storage iframe:io player.page_data.list[7] run item replace entity @s enderchest.10 from entity 0-0-0-0-2 container.0
data modify entity 0-0-0-0-2 item set from storage iframe:io player.page_data.list[8]
execute if data storage iframe:io player.page_data.list[8] run item replace entity @s enderchest.11 from entity 0-0-0-0-2 container.0
data modify entity 0-0-0-0-2 item set from storage iframe:io player.page_data.list[9]
execute if data storage iframe:io player.page_data.list[9] run item replace entity @s enderchest.12 from entity 0-0-0-0-2 container.0
data modify entity 0-0-0-0-2 item set from storage iframe:io player.page_data.list[10]
execute if data storage iframe:io player.page_data.list[10] run item replace entity @s enderchest.13 from entity 0-0-0-0-2 container.0
data modify entity 0-0-0-0-2 item set from storage iframe:io player.page_data.list[11]
execute if data storage iframe:io player.page_data.list[11] run item replace entity @s enderchest.14 from entity 0-0-0-0-2 container.0
data modify entity 0-0-0-0-2 item set from storage iframe:io player.page_data.list[12]
execute if data storage iframe:io player.page_data.list[12] run item replace entity @s enderchest.15 from entity 0-0-0-0-2 container.0
data modify entity 0-0-0-0-2 item set from storage iframe:io player.page_data.list[13]
execute if data storage iframe:io player.page_data.list[13] run item replace entity @s enderchest.16 from entity 0-0-0-0-2 container.0

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