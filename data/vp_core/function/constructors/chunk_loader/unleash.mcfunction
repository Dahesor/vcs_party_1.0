#vp_core:constructors/chunk_loader/unleash
# vp_core:constructors/chunk_loader/_start异步调用

data modify entity 0-0-0-0-1 Thrower set from entity @s data.area_info.chunk_loader_uuid
execute as 0-0-0-0-1 on origin run data modify entity @s data.load_area_uuid set value ""
data remove entity @s data.area_info.chunk_loader_uuid

data modify entity @s data.area_info.load_func set value "vp_core:utils/chunk_area/_void_func"