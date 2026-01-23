#vp_core:player_space/_pull_index
# 获取已注册玩家的编号
# 输出<@s, vp_player_id>
# 传入玩家为执行者

data modify storage vp_core:io temp_uuid set from entity @s UUID
execute store result score @s vp_player_id run function vp_core:player_space/pull_index