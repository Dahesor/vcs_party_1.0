#vp_core:_reset_player
# 重置一名玩家的全部身体属性
# 输入玩家为执行者

execute if entity @s[tag=iframe_player] run function iframe:_exit_pure
ride @s dismount
xp set @s 0 levels
xp set @s 0 points
clear @s
function iframe:_clear_ender
team leave @s
effect clear @s
effect give @s minecraft:saturation 1 100 true
effect give @s minecraft:instant_health 1 100 true
recipe take @s *
gamemode adventure @s
advancement revoke @s everything
spawnpoint @s 0 0 0 0.0 0.0
waypoint modify @s style reset
waypoint modify @s color reset
# 重置所有atrribute以及modifier
data modify storage vp_core:io temp set value []
data modify storage vp_core:io temp set from entity @s attributes
execute if data storage vp_core:io temp[0] run function vp_core:remove_modifiers with storage vp_core:io temp[0]