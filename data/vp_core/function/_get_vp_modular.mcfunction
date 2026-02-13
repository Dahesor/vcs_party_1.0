#vp_core:_get_vp_modular

scoreboard players reset @s vp_modular
execute store result score temp_min int if entity @a[scores={vp_modular=0}]
scoreboard players set @s vp_modular 0
scoreboard players operation temp_min int < temp_cnt int
execute store result score temp_cnt int if entity @a[scores={vp_modular=1}]
execute if score temp_cnt int < temp_min int run scoreboard players set @s vp_modular 1
scoreboard players operation temp_min int < temp_cnt int
execute store result score temp_cnt int if entity @a[scores={vp_modular=2}]
execute if score temp_cnt int < temp_min int run scoreboard players set @s vp_modular 2
scoreboard players operation temp_min int < temp_cnt int
execute store result score temp_cnt int if entity @a[scores={vp_modular=3}]
execute if score temp_cnt int < temp_min int run scoreboard players set @s vp_modular 3
scoreboard players operation temp_min int < temp_cnt int
execute store result score temp_cnt int if entity @a[scores={vp_modular=4}]
execute if score temp_cnt int < temp_min int run scoreboard players set @s vp_modular 4
scoreboard players operation temp_min int < temp_cnt int
execute store result score temp_cnt int if entity @a[scores={vp_modular=5}]
execute if score temp_cnt int < temp_min int run scoreboard players set @s vp_modular 5
scoreboard players operation temp_min int < temp_cnt int
execute store result score temp_cnt int if entity @a[scores={vp_modular=6}]
execute if score temp_cnt int < temp_min int run scoreboard players set @s vp_modular 6
scoreboard players operation temp_min int < temp_cnt int
execute store result score temp_cnt int if entity @a[scores={vp_modular=7}]
execute if score temp_cnt int < temp_min int run scoreboard players set @s vp_modular 7
scoreboard players operation temp_min int < temp_cnt int
execute store result score temp_cnt int if entity @a[scores={vp_modular=8}]
execute if score temp_cnt int < temp_min int run scoreboard players set @s vp_modular 8
scoreboard players operation temp_min int < temp_cnt int
execute store result score temp_cnt int if entity @a[scores={vp_modular=9}]
execute if score temp_cnt int < temp_min int run scoreboard players set @s vp_modular 9