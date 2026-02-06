#vp_core:_init
# 初始化vp_core模块

# 创建记分板
scoreboard objectives add vp_lg minecraft.custom:minecraft.leave_game

# 设置常量
scoreboard players set 48 int 48

# 设置缓冲位置
data modify storage math:io xyz set value [0.0d,0.0d,0.0d]
data modify storage math:io scale set value [0.0f,0.0f,0.0f]

# 小游戏模板列表
data modify storage vp_core:class list_games set value []

# 初始化各个内置工具模块
function vp_core:utils/chunk_area/init
function vp_core:utils/game_control/init

# 初始化各个内置构造器模块
function vp_core:constructors/area_clear/init
function vp_core:constructors/chunk_loader/init
function vp_core:constructors/structure_builder/init
function vp_core:constructors/barrier_builder/init
function vp_core:constructors/player_setup/init
function vp_core:constructors/player_teleport/init

# 初始化玩家空间数据结构
function vp_core:player_space/init

# 调用主循环
schedule function vp_core:tick 1t replace