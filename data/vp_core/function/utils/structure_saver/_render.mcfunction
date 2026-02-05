#vp_core:utils/structure_saver/_render
# 渲染结构区域
# 占用temp{<temp_x,int>,<temp_y,int>,<temp_z,int>,<temp_l,int>,<temp_h,int>}
# 占用[storage math:io xyz]
# 输入<duration,int>表示渲染的游戏刻数
# 输出entity @e[tag=result]
# 需要传入世界实体

tag @e[tag=result] remove result

# 生成展示实体
summon item_display 0 0 0 {transformation:{scale:[0.1f,0.1f,0.1f],right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f]},item:{id:"minecraft:red_concrete",count:1b},CustomName:"vp_display",Tags:["result","vp_display","vp_display_x","vp_display_1"],view_range:16.0f}
summon item_display 0 0 0 {transformation:{scale:[0.1f,0.1f,0.1f],right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f]},item:{id:"minecraft:red_concrete",count:1b},CustomName:"vp_display",Tags:["result","vp_display","vp_display_x","vp_display_2"],view_range:16.0f}
summon item_display 0 0 0 {transformation:{scale:[0.1f,0.1f,0.1f],right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f]},item:{id:"minecraft:red_concrete",count:1b},CustomName:"vp_display",Tags:["result","vp_display","vp_display_x","vp_display_3"],view_range:16.0f}
summon item_display 0 0 0 {transformation:{scale:[0.1f,0.1f,0.1f],right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f]},item:{id:"minecraft:red_concrete",count:1b},CustomName:"vp_display",Tags:["result","vp_display","vp_display_x","vp_display_4"],view_range:16.0f}
summon item_display 0 0 0 {transformation:{scale:[0.1f,0.1f,0.1f],right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f]},item:{id:"minecraft:red_concrete",count:1b},CustomName:"vp_display",Tags:["result","vp_display","vp_display_y","vp_display_5"],view_range:16.0f}
summon item_display 0 0 0 {transformation:{scale:[0.1f,0.1f,0.1f],right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f]},item:{id:"minecraft:red_concrete",count:1b},CustomName:"vp_display",Tags:["result","vp_display","vp_display_y","vp_display_6"],view_range:16.0f}
summon item_display 0 0 0 {transformation:{scale:[0.1f,0.1f,0.1f],right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f]},item:{id:"minecraft:red_concrete",count:1b},CustomName:"vp_display",Tags:["result","vp_display","vp_display_y","vp_display_7"],view_range:16.0f}
summon item_display 0 0 0 {transformation:{scale:[0.1f,0.1f,0.1f],right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f]},item:{id:"minecraft:red_concrete",count:1b},CustomName:"vp_display",Tags:["result","vp_display","vp_display_y","vp_display_8"],view_range:16.0f}
summon item_display 0 0 0 {transformation:{scale:[0.1f,0.1f,0.1f],right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f]},item:{id:"minecraft:red_concrete",count:1b},CustomName:"vp_display",Tags:["result","vp_display","vp_display_z","vp_display_9"],view_range:16.0f}
summon item_display 0 0 0 {transformation:{scale:[0.1f,0.1f,0.1f],right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f]},item:{id:"minecraft:red_concrete",count:1b},CustomName:"vp_display",Tags:["result","vp_display","vp_display_z","vp_display_10"],view_range:16.0f}
summon item_display 0 0 0 {transformation:{scale:[0.1f,0.1f,0.1f],right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f]},item:{id:"minecraft:red_concrete",count:1b},CustomName:"vp_display",Tags:["result","vp_display","vp_display_z","vp_display_11"],view_range:16.0f}
summon item_display 0 0 0 {transformation:{scale:[0.1f,0.1f,0.1f],right_rotation:[0.0f,0.0f,0.0f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f]},item:{id:"minecraft:red_concrete",count:1b},CustomName:"vp_display",Tags:["result","vp_display","vp_display_z","vp_display_12"],view_range:16.0f}

# 边缘宽度
scoreboard players set temp_margin int 5

# 设置存在时间
scoreboard players operation @e[tag=result] killtime = duration int

# 获取区域数据
execute store result score temp_x int run data get storage vp_core:io field_center[0] 10
execute store result score temp_y int run data get storage vp_core:io field_center[1] 10
execute store result score temp_z int run data get storage vp_core:io field_center[2] 10
execute store result score temp_l int run data get storage vp_core:io field_size 240
execute store result score temp_h int run data get storage vp_core:io field_height 240
scoreboard players operation temp_l int += temp_margin int
scoreboard players operation temp_y int -= temp_margin int
scoreboard players operation temp_h int += temp_margin int

# 设置边框长度
execute as @e[tag=result,tag=vp_display] store result entity @s transformation.scale[] float 0.2 run scoreboard players get temp_margin int
execute as @e[tag=result,tag=vp_display_x] store result entity @s transformation.scale[0] float 0.2 run scoreboard players get temp_l int
execute as @e[tag=result,tag=vp_display_y] store result entity @s transformation.scale[1] float 0.2 run scoreboard players get temp_h int
execute as @e[tag=result,tag=vp_display_z] store result entity @s transformation.scale[2] float 0.2 run scoreboard players get temp_l int

# 计算x轴边框位置
execute store result storage math:io xyz[0] double 0.1 run scoreboard players get temp_x int
execute store result storage math:io xyz[1] double 0.1 run scoreboard players get temp_y int
execute store result storage math:io xyz[2] double 0.1 run scoreboard players operation temp_z int -= temp_l int
data modify entity @s Pos set from storage math:io xyz
execute at @s run tp @e[tag=result,tag=vp_display_1,limit=1] ~ ~ ~
scoreboard players operation temp_y int += temp_h int
execute store result storage math:io xyz[1] double 0.1 run scoreboard players operation temp_y int += temp_h int
data modify entity @s Pos set from storage math:io xyz
execute at @s run tp @e[tag=result,tag=vp_display_2,limit=1] ~ ~ ~
scoreboard players operation temp_z int += temp_l int
execute store result storage math:io xyz[2] double 0.1 run scoreboard players operation temp_z int += temp_l int
data modify entity @s Pos set from storage math:io xyz
execute at @s run tp @e[tag=result,tag=vp_display_3,limit=1] ~ ~ ~
scoreboard players operation temp_y int -= temp_h int
execute store result storage math:io xyz[1] double 0.1 run scoreboard players operation temp_y int -= temp_h int
data modify entity @s Pos set from storage math:io xyz
execute at @s run tp @e[tag=result,tag=vp_display_4,limit=1] ~ ~ ~

# 计算y轴边框位置
execute store result storage math:io xyz[1] double 0.1 run scoreboard players operation temp_y int += temp_h int
execute store result storage math:io xyz[0] double 0.1 run scoreboard players operation temp_x int -= temp_l int
data modify entity @s Pos set from storage math:io xyz
execute at @s run tp @e[tag=result,tag=vp_display_5,limit=1] ~ ~ ~
scoreboard players operation temp_z int -= temp_l int
execute store result storage math:io xyz[2] double 0.1 run scoreboard players operation temp_z int -= temp_l int
data modify entity @s Pos set from storage math:io xyz
execute at @s run tp @e[tag=result,tag=vp_display_6,limit=1] ~ ~ ~
scoreboard players operation temp_x int += temp_l int
execute store result storage math:io xyz[0] double 0.1 run scoreboard players operation temp_x int += temp_l int
data modify entity @s Pos set from storage math:io xyz
execute at @s run tp @e[tag=result,tag=vp_display_7,limit=1] ~ ~ ~
scoreboard players operation temp_z int += temp_l int
execute store result storage math:io xyz[2] double 0.1 run scoreboard players operation temp_z int += temp_l int
data modify entity @s Pos set from storage math:io xyz
execute at @s run tp @e[tag=result,tag=vp_display_8,limit=1] ~ ~ ~

# 计算z轴边框位置
execute store result storage math:io xyz[1] double 0.1 run scoreboard players operation temp_y int -= temp_h int
execute store result storage math:io xyz[2] double 0.1 run scoreboard players operation temp_z int -= temp_l int
data modify entity @s Pos set from storage math:io xyz
execute at @s run tp @e[tag=result,tag=vp_display_9,limit=1] ~ ~ ~
scoreboard players operation temp_x int -= temp_l int
execute store result storage math:io xyz[0] double 0.1 run scoreboard players operation temp_x int -= temp_l int
data modify entity @s Pos set from storage math:io xyz
execute at @s run tp @e[tag=result,tag=vp_display_10,limit=1] ~ ~ ~
scoreboard players operation temp_y int += temp_h int
execute store result storage math:io xyz[1] double 0.1 run scoreboard players operation temp_y int += temp_h int
data modify entity @s Pos set from storage math:io xyz
execute at @s run tp @e[tag=result,tag=vp_display_11,limit=1] ~ ~ ~
scoreboard players operation temp_x int += temp_l int
execute store result storage math:io xyz[0] double 0.1 run scoreboard players operation temp_x int += temp_l int
data modify entity @s Pos set from storage math:io xyz
execute at @s run tp @e[tag=result,tag=vp_display_12,limit=1] ~ ~ ~

scoreboard players operation temp_l int -= temp_margin int
scoreboard players operation temp_h int -= temp_margin int

# 坐标安全
tp @s 0 0 0