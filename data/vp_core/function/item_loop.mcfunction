#vp_core:item_loop
# vp_core:iter_player调用

data modify storage vp_core:io item_instance_dump set from storage vp_core:io item_instance[0].components."minecraft:custom_data".item_instance
execute store result score temp_slot int run data get storage vp_core:io item_instance_dump.Slot
data modify storage vp_core:io this_item set from storage vp_core:io item_instance[0]
function vp_core:item_instance_call

data remove storage vp_core:io item_instance[0]
execute if data storage vp_core:io item_instance[0] run function vp_core:item_loop