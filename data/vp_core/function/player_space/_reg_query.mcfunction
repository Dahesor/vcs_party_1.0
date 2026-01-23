#vp_core:player_space/_reg_query
# 查询玩家是否已经注册
# 输出<res,int>, 已经注册?1:0
# 以玩家为执行者

data modify storage vp_core:io temp_uuid set from entity @s UUID
execute store result score res int run function vp_core:player_space/reg_query with storage vp_core:io {}