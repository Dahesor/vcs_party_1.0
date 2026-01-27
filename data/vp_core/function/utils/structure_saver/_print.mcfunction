#vp_core:utils/structure_saver/_print
# 打印临时对象数据

tellraw @a ["_this: ", "{"]
tellraw @a ["    ", "field_size: ", {"nbt":"field_size", "storage":"vp_core:io"}, ","]
tellraw @a ["    ", "field_height: ", {"nbt":"field_height", "storage":"vp_core:io"}, ","]
tellraw @a ["    ", "field_center: ", {"nbt":"field_center", "storage":"vp_core:io"}, ","]
tellraw @a ["    ", "field_index: ", {"nbt":"field_index", "storage":"vp_core:io"}, ","]
tellraw @a ["    ", "structure_prefix: ", {"nbt":"structure_prefix", "storage":"vp_core:io"}]
tellraw @a "}"