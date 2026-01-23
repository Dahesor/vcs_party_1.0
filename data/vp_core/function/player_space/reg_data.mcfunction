#vp_core:player_space/reg_data
# vp_core:player_space/_reg调用

$data modify storage vp_core:io player_space_table.'$(temp_uuid)' set value $(temp_index)
$data modify storage vp_core:io player_space.$(temp_index) set value {}