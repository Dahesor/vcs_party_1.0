#vp_core:souvenirs/_clear_as
# 清空玩家纪念品
# 传入玩家为执行者

function vp_core:player_space/_get
data modify storage vp_core:io result.souvenirs set value []
function vp_core:player_space/_store