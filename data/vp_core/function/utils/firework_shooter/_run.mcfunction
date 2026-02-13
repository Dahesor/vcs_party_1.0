#vp_core:utils/firework_shooter/_run
# 发射烟花
# 输入执行位置
# 输出entity @e[tag=result,limit=1]
# 需要传入世界实体为执行者

tag @e[tag=result] remove result
tp @s ~ ~ ~
data modify storage math:io xyz set from entity @s Pos
execute store result score temp_x int run data get storage math:io xyz[0] 100
execute store result score temp_y int run data get storage math:io xyz[1] 100
execute store result score temp_z int run data get storage math:io xyz[2] 100
execute store result score random int run random value -500..500
execute store result storage math:io xyz[0] double 0.01 run scoreboard players operation temp_x int += random int
execute store result score random int run random value 0..500
execute store result storage math:io xyz[1] double 0.01 run scoreboard players operation temp_y int += random int
execute store result score random int run random value -500..500
execute store result storage math:io xyz[2] double 0.01 run scoreboard players operation temp_z int += random int
data modify entity @s Pos set from storage math:io xyz
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