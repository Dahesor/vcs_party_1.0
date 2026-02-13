#vp_core:souvenirs/update_page_loop
# vp_core:souvenirs/_update_page_as调用

data modify storage vp_core:io temp set from storage vp_core:io temp_souvenirs[0]
data remove storage vp_core:io temp_souvenirs[0]

# 移除价格信息
data remove storage vp_core:io temp.components."minecraft:lore"[-1]

# 显示冷却信息
execute store result score temp_timer int run data get storage vp_core:io temp.timer
execute if score temp_timer int matches 1.. run function vp_core:souvenirs/iter_page_cd
execute store result storage vp_core:io temp.barrier_render byte 1 run scoreboard players get temp_timer int
execute store result score temp_render int run data get storage vp_core:io result.list[0].barrier_render
execute unless score temp_render int = temp_timer int run scoreboard players set update_gui int 1

# 设置iframe_ui按钮
data modify storage vp_core:io temp.components."minecraft:custom_data" merge value {iframe_ui:1b}

data remove storage vp_core:io result.list[0]
data modify storage vp_core:io result.list append from storage vp_core:io temp

scoreboard players remove loop int 1
execute if score loop int matches 1.. run function vp_core:souvenirs/update_page_loop