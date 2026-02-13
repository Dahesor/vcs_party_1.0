#vp_core:utils/ender_gui/_new
# 使用数据模板生成实体对象
# 输入数据模板storage vp_core:io input
# 输入执行位置
# 输出 @e[tag=result,limit=1]

tag @e[tag=result] remove result
summon text_display ~ ~ ~ {Tags:["vp_ender_gui", "result"]}
execute as @e[tag=result,limit=1] run function vp_core:utils/ender_gui/set
execute as @e[tag=result,limit=1] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function vp_core:utils/ender_gui/set_operation