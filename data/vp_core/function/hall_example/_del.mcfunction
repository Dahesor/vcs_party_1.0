#vp_core:hall_example/_del
# 根据临时对象销毁大厅实例

# 销毁区块任务图层
data modify entity @e[tag=uuid_marker,limit=1] Thrower set from storage vp_core:io hall_area_uuid
execute as @e[tag=uuid_marker,limit=1] on origin run kill @s