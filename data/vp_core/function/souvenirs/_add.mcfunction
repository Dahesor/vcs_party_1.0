#vp_core:souvenirs/_add
# 玩家空间内添加纪念品
# 输入storage vp_core:io input
# 传入玩家为执行者

function vp_core:player_space/_get
execute unless data storage vp_core:io result.souvenirs run data modify storage vp_core:io result.souvenirs set value []
data modify storage vp_core:io result.souvenirs append from storage vp_core:io input
function vp_core:player_space/_store