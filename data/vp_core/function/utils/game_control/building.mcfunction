#vp_core:utils/game_control/building
# vp_core:utils/game_control/main调用

execute unless data storage vp_core:io {game_state:"prepared"} run return fail
# 构造完成
data modify storage vp_core:io control_state set value "running"