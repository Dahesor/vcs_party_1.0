#vp_core:ilc
# 玩家对交互实体左键
# advancement vp_core:ilc调用

execute as @e[type=minecraft:interaction,nbt={attack:{}}] run function vp_core:ilc_func
advancement revoke @s only vp_core:ilc