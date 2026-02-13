#vp_core:hall_example/gen_structure
# vp_core:hall_example/_gen异步调用

execute as @e[tag=hall_structure_builder,limit=1] run function vp_core:constructors/structure_builder/main
execute unless score vp_progress int matches 100 run return fail

# 加载末影箱商店
data modify storage vp_core:io input set value {\
	open_gui:"vp_core:guis/souvenirs_shop",\
	custom_name:{"text":"购买纪念品","bold":true,"color":"aqua"}\
}
data modify entity @e[tag=math_marker,limit=1] Pos set from storage vp_core:io hall_center
execute at @e[tag=math_marker,limit=1] positioned ~5 ~3 ~ run function vp_core:utils/ender_gui/_new
tag @e[tag=result,limit=1] add vp_hall_instance
execute at @e[tag=math_marker,limit=1] positioned ~ ~3 ~ as @e[tag=result,limit=1] run function vp_core:utils/ender_gui/_facing_here
tp @e[tag=math_marker,limit=1] 0 0 0

# 加载完成，调用主程序
data modify entity @s data.area_info.load_func set value "vp_core:hall_example/main"