#vp_core:guis/souvenirs_chest/next_page
# vp_core:guis/souvenirs_chest/main调用

# 翻页信息
execute store result score temp_cur int run data get storage iframe:io player.page_data.cur
execute store result score temp_total int run data get storage iframe:io player.page_data.total

execute if score temp_cur int >= temp_total int at @s run playsound minecraft:block.note_block.bass player @a ~ ~ ~ 1.0 1.0
execute if score temp_cur int >= temp_total int run return run scoreboard players set update_gui int 1

execute at @s run playsound minecraft:block.lever.click player @s ~ ~ ~ 1.0 2.0
data modify storage vp_core:io result set from storage iframe:io player.page_data
execute store result storage vp_core:io result.cur int 1 run scoreboard players add temp_cur int 1
function vp_core:souvenirs/_get_page_as
data modify storage iframe:io player.page_data set from storage vp_core:io result

scoreboard players set update_gui int 1