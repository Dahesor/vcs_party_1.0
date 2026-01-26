#vp_core:utils/game_control/main
# vp_core:tick调用

data modify storage vp_core:io temp_state set from storage vp_core:io control_state
execute if data storage vp_core:io {temp_state:"building"} run function vp_core:utils/game_control/building
execute if data storage vp_core:io {temp_state:"clearing"} run function vp_core:utils/game_control/clearing
execute if data storage vp_core:io {temp_state:"running"} run function vp_core:utils/game_control/running