#vp_core:tick
# vp_core:_init异步调用

# 玩家登入
execute as @a unless score @s vp_lg matches -1 run function vp_core:lg_player

# 玩家死亡/复活
execute as @a[scores={vp_death=1..}] at @s run function vp_core:player_death

# 玩家模型框架
execute as @a run function vp_core:player_main

# 纪念品冷却
execute as @a[scores={vp_modular=0}] run function vp_core:souvenirs/_iter_cd

# 区域加载
execute as @e[tag=chunk_area,tag=loading] run function vp_core:utils/chunk_area/main

# 游戏主程序
execute unless data storage vp_core:io {control_state:"waiting"} run function vp_core:utils/game_control/main

# vp时钟计时
scoreboard players add vp_clock int 1

# vp_modular频率
scoreboard players add @a vp_modular 1
scoreboard players operation @a vp_modular %= 10 int

# 调用主循环
schedule function vp_core:tick 1t replace