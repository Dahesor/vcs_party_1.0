#vp_core:tick
# vp_core:_init异步调用

# 玩家登入
execute as @a unless score @s vp_lg matches -1 run function vp_core:lg_player

# 玩家交互框架
execute as @a run function vp_core:player_main

# 区域加载
execute as @e[tag=chunk_area,tag=loading] run function vp_core:utils/chunk_area/main

# 调用主循环
schedule function vp_core:tick 1t replace