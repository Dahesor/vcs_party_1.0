#vp_core:souvenirs/_iter_page_as
# 获取玩家页面信息
# 输入storage vp_core:io result
# 输出storage vp_core:io result
# 传入玩家为执行者

data modify storage vp_core:io temp set from storage vp_core:io result
function vp_core:player_space/_get
data modify storage vp_core:io temp_souvenirs set value []
data modify storage vp_core:io temp_souvenirs set from storage vp_core:io result.souvenirs
data modify storage vp_core:io result set from storage vp_core:io temp

execute store result score temp_cur int run data get storage vp_core:io result.cur
execute store result score temp_n int run data get storage vp_core:io result.list

scoreboard players remove temp_cur int 1
scoreboard players operation temp_cur int *= 14 int
execute store result storage vp_core:io temp_index int 1 run scoreboard players operation temp_cur int += temp_n int
function vp_core:souvenirs/page_as_append with storage vp_core:io {}

# 移除价格信息
data remove storage vp_core:io temp.components."minecraft:lore"[-1]

# 显示冷却信息
execute store result score temp_timer int run data get storage vp_core:io temp.timer
execute if score temp_timer int matches 1.. run function vp_core:souvenirs/iter_page_cd
execute store result storage vp_core:io temp.barrier_render byte 1 run scoreboard players get temp_timer int

# 设置iframe_ui按钮
data modify storage vp_core:io temp.components."minecraft:custom_data" merge value {iframe_ui:1b}

data modify storage vp_core:io result.list append from storage vp_core:io temp