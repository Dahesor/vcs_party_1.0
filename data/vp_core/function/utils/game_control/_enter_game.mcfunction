#vp_core:utils/game_control/_enter_game
# 控制进入游戏
# 输出<res,int>, 进入游戏成功?1:0

# 检查是否满足进入条件
function vp_core:utils/game_control/call_enter_check with storage vp_core:io control_plate
execute if score res int matches 0 run return run scoreboard players set res int 0
execute unless data storage vp_core:io {control_state:"waiting"} run return run scoreboard players set res int 0

# 重置游戏规则
function vp_core:_reset_rules

# 游戏模板投射到临时对象
function vp_core:utils/game_control/proj_plate with storage vp_core:io control_plate
# 开始构造游戏实例
function vp_core:utils/game_control/build_start with storage vp_core:io control_plate
# 切换控制器状态
data modify storage vp_core:io control_state set value "building"
tellraw @a ["",{"nbt":"game_name","storage":"vp_core:io","interpret":true}, {"text":" constructing...","color":"gray"}]