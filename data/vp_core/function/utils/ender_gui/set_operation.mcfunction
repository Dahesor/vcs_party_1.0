#vp_core:utils/ender_gui/set_operation
# vp_core:utils/ender_gui/_new调用

setblock ~ ~ ~ minecraft:ender_chest
tp @s ~ ~0.65 ~
data modify entity @s text set from storage vp_core:io input.custom_name
data merge entity @s {\
	Glowing:1b,\
	brightness:{\
		block:15,\
		sky:15\
	},\
	billboard:"center",\
	transformation:{\
		right_rotation:[0.0f,0.0f,0.0f,1.0f],\
		scale:[2.0f,2.0f,2.0f],\
		left_rotation:[0.0f,0.0f,0.0f,1.0f],\
		translation:[0.0f,0.0f,0.0f]\
	}\
}