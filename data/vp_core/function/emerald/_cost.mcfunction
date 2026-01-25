#vp_core:emerald/_cost
# 减少玩家绿宝石货币数量
# 输入<inp,int>
# 输出<res,int>
# 传入玩家为执行者

function vp_core:player_space/_get
execute unless data storage vp_core:io result.emerald run data modify storage vp_core:io result.emerald set value 0
execute store result score res int run data get storage vp_core:io result.emerald
execute store result storage vp_core:io result.emerald int 1 run scoreboard players operation res int -= inp int
function vp_core:player_space/_store