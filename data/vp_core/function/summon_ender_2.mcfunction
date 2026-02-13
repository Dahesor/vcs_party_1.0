#vp_core:summon_ender_2
# vp_core:shift_start调用

scoreboard players set @e[tag=vp_summon_ender_1,limit=1,sort=nearest] killtime 20
tag @e[tag=vp_summon_ender_1,limit=1,sort=nearest] add vp_summon_ender_2
playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1.0 2.0