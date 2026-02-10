#vp_core:utils/structure_saver/load_from_pot
# vp_core:utils/structure_saver/_load_from_pot调用

$place template $(structure_prefix)metadata ~ ~ ~
data modify storage vp_core:io field_size set from block ~ ~ ~ item.components."minecraft:custom_data".field_size
data modify storage vp_core:io field_height set from block ~ ~ ~ item.components."minecraft:custom_data".field_height
setblock ~ ~ ~ air