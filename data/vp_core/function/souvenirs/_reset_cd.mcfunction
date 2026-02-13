#vp_core:souvenirs/_reset_cd
# 刷新纪念品冷却
# 输入前缀storage vp_core:io input
# 传入玩家为执行者

function vp_core:player_space/_get
execute store result score loop int run data get storage vp_core:io result.souvenirs
execute if score loop int matches 1.. run function vp_core:souvenirs/reset_loop
function vp_core:player_space/_store