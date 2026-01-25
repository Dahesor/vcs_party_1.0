#vp_core:player_space/_get
# 获取玩家空间
# 输出storage vp_core:io result
# 以玩家为执行者

execute store result storage vp_core:io temp_index int 1 run scoreboard players get @s vp_player_id
function vp_core:player_space/get_data with storage vp_core:io {}