#vp_core:souvenirs/_get_page_data
# 获取页面信息
# 输入storage vp_core:io result
# 输出storage vp_core:io result
# 传入玩家为执行者

execute store result score temp_type int run data get storage vp_core:io result.type
execute store result score temp_cur int run data get storage vp_core:io result.cur
execute if score temp_type int matches 0 store result score temp_len int run data get storage vp_core:io list_souvenirs_0
execute if score temp_type int matches 1 store result score temp_len int run data get storage vp_core:io list_souvenirs_1
execute if score temp_type int matches 2 store result score temp_len int run data get storage vp_core:io list_souvenirs_2
execute if score temp_type int matches 3 store result score temp_len int run data get storage vp_core:io list_souvenirs_3
scoreboard players operation temp_total int = temp_len int
scoreboard players add temp_total int 13
scoreboard players operation temp_total int /= 14 int
scoreboard players operation temp_len int %= 14 int
execute if score temp_cur int < temp_total int run scoreboard players set temp_len int 14
execute if score temp_len int matches 0 run scoreboard players set temp_len int 14
execute if score temp_total int matches 0 run scoreboard players set temp_len int 0

data modify storage vp_core:io result.list set value []
execute store result storage vp_core:io result.total int 1 run scoreboard players get temp_total int
execute store result storage vp_core:io result.len int 1 run scoreboard players get temp_len int