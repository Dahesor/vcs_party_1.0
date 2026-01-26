#vp_core:utils/game_control/running
# vp_core:utils/game_control/main调用

# 调用游戏主程序
function vp_core:utils/game_control/call_main with storage vp_core:io control_plate
execute unless data storage vp_core:io {game_state:"over"} run return fail
# 游戏结束
execute as @a[tag=vp_player] run function vp_core:hall/_enter
function vp_core:utils/game_control/call_del with storage vp_core:io control_plate
data modify storage vp_core:io control_state set value "clearing"