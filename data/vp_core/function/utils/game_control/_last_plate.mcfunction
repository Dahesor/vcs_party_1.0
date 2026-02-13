#vp_core:utils/game_control/_last_plate
# 加载上一个小游戏模板
# 输出<res,int>: 加载成功?1:0

execute unless data storage vp_core:io {game_state:"waiting"} run return run scoreboard players set res int 0

data modify storage vp_core:io control_plate set from storage vp_core:class list_games[-1]
data modify storage vp_core:class list_games prepend from storage vp_core:class list_games[-1]
data remove storage vp_core:class list_games[-1]
scoreboard players set res int 1