#vp_core:hall/main
# vp_core:_gen异步调用

execute if score @s killtime matches 1 run function vp_core:hall/main_low
execute unless score @s killtime matches 2.. run scoreboard players set @s killtime 11