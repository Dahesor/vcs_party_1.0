#vp_core:souvenirs/iter_page_cd
# vp_core:souvenirs/_iter_page_as调用
# vp_core:souvenirs/update_page_loop调用

data modify storage vp_core:io temp.id set value "minecraft:barrier"
scoreboard players add temp_timer int 11
scoreboard players operation temp_timer int /= 12 int
scoreboard players operation temp_timer int < 64 int
execute store result storage vp_core:io temp.count byte 1 run scoreboard players get temp_timer int
data modify storage vp_core:io temp.components."minecraft:lore" append value {"text":"冷却中","color":"red","italic":false,"bold":true}