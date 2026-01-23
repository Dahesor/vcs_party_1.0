#vp_core:player_space/_reg
# 注册玩家空间
# 以玩家为执行者

# 获取编号
execute unless data storage vp_core:io player_space_addr[0] run function vp_core:player_space/new_addr
data modify storage vp_core:io temp_index set from storage vp_core:io player_space_addr[0]
data remove storage vp_core:io player_space_addr[0]
data modify storage vp_core:io temp_uuid set from entity @s UUID

# 注册数据
function vp_core:player_space/reg_data with storage vp_core:io {}