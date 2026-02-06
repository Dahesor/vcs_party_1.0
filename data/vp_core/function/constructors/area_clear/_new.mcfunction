#vp_core:constructors/area_clear/_new
# 使用数据模板生成area_clear实例
# 输入数据模板storage vp_core:io input
# 输出 @e[tag=result,limit=1]

tag @e[tag=result] remove result
summon marker 0 0 0 {Tags:["vp_constructor", "area_clear", "result"], CustomName:"area_clear"}
execute as @e[tag=result,limit=1] run function vp_core:constructors/area_clear/set