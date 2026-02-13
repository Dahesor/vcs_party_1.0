#vp_core:souvenirs/_iter_page_data
# 获取页面初始信息
# 输入storage vp_core:io result
# 输出storage vp_core:io result
# 传入玩家为执行者

data modify storage vp_core:io temp set from storage vp_core:io result
# 查询玩家绿宝石
function vp_core:emerald/_query
scoreboard players operation temp_emeralds int = res int
data modify storage vp_core:io temp_souvenirs set value []
data modify storage vp_core:io temp_souvenirs set from storage vp_core:io result.souvenirs
data modify storage vp_core:io result set from storage vp_core:io temp

execute store result score temp_type int run data get storage vp_core:io result.type
execute if score temp_type int matches 0 run data modify storage vp_core:io temp set from storage vp_core:io list_souvenirs_0
execute if score temp_type int matches 1 run data modify storage vp_core:io temp set from storage vp_core:io list_souvenirs_1
execute if score temp_type int matches 2 run data modify storage vp_core:io temp set from storage vp_core:io list_souvenirs_2
execute if score temp_type int matches 3 run data modify storage vp_core:io temp set from storage vp_core:io list_souvenirs_3
execute store result score temp_cur int run data get storage vp_core:io result.cur
execute store result score temp_n int run data get storage vp_core:io result.list

scoreboard players remove temp_cur int 1
scoreboard players operation temp_cur int *= 14 int
execute store result storage vp_core:io temp_index int 1 run scoreboard players operation temp_cur int += temp_n int
function vp_core:souvenirs/page_data_append with storage vp_core:io {}

# 设置Lore
execute store result score temp_price int run data get storage vp_core:io temp.price
data modify storage vp_core:io temp_text set value {"text":"", "bold":true, "color":"green"}
function vp_core:souvenirs/set_page_text with storage vp_core:io temp
execute if score temp_emeralds int < temp_price int run data modify storage vp_core:io temp_text.color set value "yellow"
execute unless data storage vp_core:io temp.components."minecraft:lore" run data modify storage vp_core:io temp.components."minecraft:lore" set value []
data modify storage vp_core:io temp.components."minecraft:lore" append from storage vp_core:io temp_text

# 检查是否已经购买
execute store result score temp_cmp int run data get storage vp_core:io temp_souvenirs
execute store result score res int run data modify storage vp_core:io temp_souvenirs[].prefix set from storage vp_core:io temp.prefix
execute if score temp_cmp int > res int run function vp_core:souvenirs/buy_checked

# 设置iframe_ui按钮
data modify storage vp_core:io temp.components."minecraft:custom_data" merge value {iframe_ui:1b}

data modify storage vp_core:io result.list append from storage vp_core:io temp