#vp_core:summon_ender_1
# vp_core:shift_start调用

tag @e[tag=result] remove result
summon marker ~ ~ ~ {Tags:["result","vp_summon_ender_1"],CustomName:"vp_summon_ender"}
scoreboard players set @e[tag=result,limit=1] killtime 20
playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1.0 2.0