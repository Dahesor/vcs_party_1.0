#vp_core:lg_player
# vp_core:tick调用

# 注册玩家空间
function vp_core:player_space/_reg_query
execute if score res int matches 0 run function vp_core:player_space/_reg
# 获取玩家空间地址
function vp_core:player_space/_pull_index

# 分配vp_modular
function vp_core:_get_vp_modular

# 进入大厅
function vp_core:hall/_enter

scoreboard players set @s vp_lg -1