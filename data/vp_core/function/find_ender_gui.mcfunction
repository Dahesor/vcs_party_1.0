#vp_core:find_ender_gui
# vp_core:iter_player调用

execute if entity @s[tag=iframe_player] run function iframe:_exit_pure
execute as @e[tag=vp_ender_gui,distance=..7,sort=furthest] run data modify storage iframe:io input set from entity @s data.open_gui
function iframe:_enter