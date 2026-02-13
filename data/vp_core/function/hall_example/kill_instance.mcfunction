#vp_core:hall_example/kill_instance
# vp_core:hall_example/_del调用

execute unless score @s module_id matches 0.. run return run kill @s
function module_control:_call_method {path:"_del"}