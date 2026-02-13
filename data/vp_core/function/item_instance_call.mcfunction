#vp_core:item_instance_call
# vp_core:item_loop调用

execute if score temp_slot int = sel_slot int \
	if data storage vp_core:io item_instance_dump.sel_func \
	run return run function vp_core:call_sel_func with storage vp_core:io item_instance_dump

execute if score temp_slot int matches -106 \
	if data storage vp_core:io item_instance_dump.off_func \
	run return run function vp_core:call_off_func with storage vp_core:io item_instance_dump

execute if score temp_slot int matches 103 \
	if data storage vp_core:io item_instance_dump.head_func \
	run return run function vp_core:call_head_func with storage vp_core:io item_instance_dump

execute if score temp_slot int matches 102 \
	if data storage vp_core:io item_instance_dump.chest_func \
	run return run function vp_core:call_chest_func with storage vp_core:io item_instance_dump

execute if score temp_slot int matches 101 \
	if data storage vp_core:io item_instance_dump.legs_func \
	run return run function vp_core:call_legs_func with storage vp_core:io item_instance_dump

execute if score temp_slot int matches 100 \
	if data storage vp_core:io item_instance_dump.feet_func \
	run return run function vp_core:call_feet_func with storage vp_core:io item_instance_dump

execute if score temp_slot int matches 0..35 \
	if data storage vp_core:io item_instance_dump.inv_func \
	run return run function vp_core:call_inv_func with storage vp_core:io item_instance_dump