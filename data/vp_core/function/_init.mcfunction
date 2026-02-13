#vp_core:_init
# 初始化vp_core模块

# 创建记分板
scoreboard objectives add vp_crc dummy
scoreboard objectives add vp_lg minecraft.custom:minecraft.leave_game
scoreboard objectives add vp_open_ender minecraft.custom:minecraft.open_enderchest
scoreboard objectives add vp_death deathCount
scoreboard objectives add vp_shift minecraft.custom:minecraft.sneak_time
scoreboard objectives add vp_shift_pre dummy
scoreboard objectives add vp_modular dummy

# 设置常量
scoreboard players set 12 int 12
scoreboard players set 14 int 14
scoreboard players set 48 int 48
scoreboard players set 64 int 64

# 设置vp时钟
scoreboard players set vp_clock int 0

# 设置缓冲位置
data modify storage math:io xyz set value [0.0d,0.0d,0.0d]
data modify storage math:io scale set value [0.0f,0.0f,0.0f]

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
function vp_core:souvenirs/init

# 调用主循环
schedule function vp_core:tick 1t replace