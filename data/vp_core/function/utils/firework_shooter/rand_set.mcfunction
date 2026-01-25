#vp_core:utils/firework_shooter/rand_set
# vp_core:utils/firework_shooter/_run调用

# 设置飞行时间
execute store result entity @s LifeTime int 1 run random value 10..35

# 设置烟花形状
execute store result score temp_random int run random value 0..4
execute if score temp_random int matches 0 run data modify storage vp_core:io temp set value "small_ball"
execute if score temp_random int matches 1 run data modify storage vp_core:io temp set value "large_ball"
execute if score temp_random int matches 2 run data modify storage vp_core:io temp set value "star"
execute if score temp_random int matches 3 run data modify storage vp_core:io temp set value "creeper"
execute if score temp_random int matches 4 run data modify storage vp_core:io temp set value "burst"
data modify entity @s FireworksItem.components."minecraft:fireworks".explosions[0].shape set from storage vp_core:io temp

# 设置烟花颜色
execute store result entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[0] int 1 run random value 0..2147483640

# 设置fade_color
execute store result entity @s FireworksItem.components."minecraft:fireworks".explosions[0].fade_colors[0] int 1 run random value 0..2147483640

# 设置闪烁效果
execute store result entity @s FireworksItem.components."minecraft:fireworks".explosions[0].has_twinkle byte 1 run random value 0..1

# 设置拖曳效果
execute store result entity @s FireworksItem.components."minecraft:fireworks".explosions[0].has_trail byte 1 run random value 0..1