#vp_core:iter_player
# 标签#vp_core:iter_player
# vp_core:player_main调用

# 构建物品实例对象
data modify storage vp_core:io item_instance set value []
data modify storage vp_core:io item_instance append from storage vp_core:io inv[{components:{"minecraft:custom_data":{item_instance:{}}}}]
data modify storage vp_core:io item_instance append from storage vp_core:io equ.offhand{components:{"minecraft:custom_data":{item_instance:{}}}}
data modify storage vp_core:io item_instance append from storage vp_core:io equ.feet{components:{"minecraft:custom_data":{item_instance:{}}}}
data modify storage vp_core:io item_instance append from storage vp_core:io equ.legs{components:{"minecraft:custom_data":{item_instance:{}}}}
data modify storage vp_core:io item_instance append from storage vp_core:io equ.chest{components:{"minecraft:custom_data":{item_instance:{}}}}
data modify storage vp_core:io item_instance append from storage vp_core:io equ.head{components:{"minecraft:custom_data":{item_instance:{}}}}
execute if data storage vp_core:io item_instance[0] run function vp_core:item_loop

# 末影箱交互
execute if score vp_open_ender int matches 1 at @s if entity @e[tag=vp_ender_gui,distance=..7] run function vp_core:find_ender_gui

# 生成纪念品末影箱仪式
execute if score vp_shift int matches 1.. if score vp_shift_pre int matches 0 at @s run function vp_core:shift_start