#vp_core:utils/game_control/waiting
# vp_core:utils/game_control/main调用

execute unless data storage vp_core:io {game_state:"cleared"} run return fail
# 清理结束
function vp_core:_reset_rules
data modify storage vp_core:io control_state set value "waiting"