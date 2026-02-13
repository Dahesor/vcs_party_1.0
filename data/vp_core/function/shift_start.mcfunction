#vp_core:shift_start
# vp_core:iter_player调用

execute if entity @s[x_rotation=-90..-80] run function vp_core:summon_ender_1
execute unless entity @e[tag=vp_summon_ender_1,limit=1,distance=..0.1] run return fail
execute if entity @s[x_rotation=80..90] run function vp_core:summon_ender_2
execute if entity @s[x_rotation=-70..70] \
	if entity @e[tag=vp_summon_ender_2,limit=1,distance=..0.1] \
	rotated ~ 0.0 \
	positioned ~ ~0.1 ~ \
	positioned ^ ^ ^1.5 \
	align xyz positioned ~0.5 ~0.5 ~0.5 \
	if block ~ ~ ~ #minecraft:air \
	run function vp_core:summon_ender_3