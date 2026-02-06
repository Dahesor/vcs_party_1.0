#vp_hunger:main
# vp_game主程序

data modify storage vp_hunger:io temp_state set from storage vp_core:io game_state
# 选择状态分支
execute if data storage vp_hunger:io {temp_state:"prepared"} run function vp_hunger:start_game
execute if data storage vp_hunger:io {temp_state:"running"} run function vp_hunger:running
execute if data storage vp_hunger:io {temp_state:"rewarding"} run function vp_hunger:rewarding