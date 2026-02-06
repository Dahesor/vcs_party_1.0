#vp_hunger:start_game
# vp_hunger:main调用

# 设置游戏开始
gamerule doMobLoot true
gamerule doMobSpawning true
gamerule doDaylightCycle true

# 下一刻跳转到进行状态
data modify storage vp_core:io game_state set value "running"

# 不满足开始条件则跳转到结束状态
function vp_hunger:_start_check
execute if score res int matches 0 run data modify storage vp_core:io game_state set value "over"