#vp_core:ilc_func
# vp_core:ilc调用

function marker_control:data/_get
execute if data storage marker_control:io result.ilc_func \
	run function vp_core:call_ilc_func with storage marker_control:io result
data remove entity @s attack