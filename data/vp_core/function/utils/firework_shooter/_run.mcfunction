#vp_core:utils/firework_shooter/_run
# 发射烟花
# 输入执行位置
# 输出entity @e[tag=result,limit=1]
# 需要传入世界实体为执行者

tag @e[tag=result] remove result
spreadplayers ~ ~ 0.0 2.5 false @s
execute at @s run summon minecraft:firework_rocket ~ ~2.1 ~ \
{\
	LifeTime:25,\
	Tags:["result"],\
	FireworksItem:{\
		id:"minecraft:firework_rocket",\
		count:1b,\
		components:{\
			"minecraft:fireworks":{\
				flight_duration:100b,\
				explosions:[{shape:"small_ball",colors:[I;0],fade_colors:[I;0]}]\
			}\
		}\
	}\
}
execute as @e[tag=result,limit=1] run function vp_core:utils/firework_shooter/rand_set

# 区块安全
tp @s 0 0 0