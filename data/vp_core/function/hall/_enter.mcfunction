#vp_core:hall/_enter
# 进入大厅
# 传入玩家为执行者

function vp_core:_reset_player
data modify entity @e[tag=math_marker,limit=1] Pos set from storage vp_core:io hall_center
execute at @e[tag=math_marker,limit=1] run tp @s ~ ~ ~
# 标签设置
tag @s remove vp_player
tag @s remove vp_gamer
tag @s remove vp_watcher
tag @s remove vp_joiner
tag @s remove vp_visitor
tag @s add vp_inhall