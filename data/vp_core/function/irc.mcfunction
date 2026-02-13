#vp_core:irc
# 玩家对交互实体右键
# advancement vp_core:irc调用

execute as @e[type=minecraft:interaction,nbt={interaction:{}}] run function vp_core:irc_func
advancement revoke @s only vp_core:irc