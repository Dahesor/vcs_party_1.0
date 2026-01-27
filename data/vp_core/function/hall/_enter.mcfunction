#vp_core:hall/_enter
# 进入大厅
# 传入玩家为执行者

function vp_core:_reset_player
data modify entity @e[tag=math_marker,limit=1] Pos set from storage vp_core:io hall_spawn
execute at @e[tag=math_marker,limit=1] run tp @s ~ ~ ~
# 标签设置
function vp_core:player_types/waiter/_be