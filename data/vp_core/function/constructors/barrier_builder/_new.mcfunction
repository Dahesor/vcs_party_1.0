#vp_core:constructors/barrier_builder/_new
# 使用数据模板生成barrier_builder实例
# 输入数据模板storage vp_core:io input
# 输出 @e[tag=result,limit=1]

tag @e[tag=result] remove result
summon marker 0 0 0 {Tags:["vp_constructor", "barrier_builder", "result"], CustomName:"barrier_builder"}
execute as @e[tag=result,limit=1] run function vp_core:constructors/barrier_builder/set