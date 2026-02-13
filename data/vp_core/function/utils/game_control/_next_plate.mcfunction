#vp_core:utils/game_control/_next_plate
# 加载下一个小游戏模板
# 输出<res,int>: 加载成功?1:0

execute unless data storage vp_core:io {game_state:"waiting"} run return run scoreboard players set res int 0

data modify storage vp_core:io control_plate set from storage vp_core:class list_games[0]
data modify storage vp_core:class list_games append from storage vp_core:class list_games[0]
data remove storage vp_core:class list_games[0]
scoreboard players set res int 1