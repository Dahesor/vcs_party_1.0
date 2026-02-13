#vp_core:souvenirs/_find
# 玩家空间内查询纪念品
# 输入storage vp_core:io input
# 输出<res,int>, 是否已经购买?1:0
# 传入玩家为执行者

function vp_core:player_space/_get
data modify storage vp_core:io temp set from storage vp_core:io result.souvenirs
execute unless data storage vp_core:io temp[0] run data modify storage vp_core:io temp set value [{}]
execute store result score res int run data get storage vp_core:io temp
execute store result score temp_res int run data modify storage vp_core:io temp[].prefix set from storage vp_core:io input.prefix
scoreboard players operation res int -= temp_res int