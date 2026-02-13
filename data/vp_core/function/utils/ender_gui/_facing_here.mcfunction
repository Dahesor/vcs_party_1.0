#vp_core:utils/ender_gui/_facing_here
# 调整末影箱朝向，使其朝向执行位置
# 输入执行位置
# 输出<res,int>表示方向
# 传入实例为执行者

execute at @s run summon marker ~ ~ ~1 {Tags:["stmp","south"],data:{res:0}}
execute at @s run summon marker ~ ~ ~-1 {Tags:["stmp","north"],data:{res:1}}
execute at @s run summon marker ~1 ~ ~ {Tags:["stmp","east"],data:{res:2}}
execute at @s run summon marker ~-1 ~ ~ {Tags:["stmp","west"],data:{res:3}}

execute store result score res int run data get entity @e[tag=stmp,limit=1,sort=nearest] data.res
execute if score res int matches 0 at @s run setblock ~ ~-0.65 ~ minecraft:ender_chest[facing=south]
execute if score res int matches 1 at @s run setblock ~ ~-0.65 ~ minecraft:ender_chest[facing=north]
execute if score res int matches 2 at @s run setblock ~ ~-0.65 ~ minecraft:ender_chest[facing=east]
execute if score res int matches 3 at @s run setblock ~ ~-0.65 ~ minecraft:ender_chest[facing=west]

kill @e[tag=stmp]