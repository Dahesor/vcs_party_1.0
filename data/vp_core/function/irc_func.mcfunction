#vp_core:irc_func
# vp_core:irc调用

function marker_control:data/_get
execute if data storage marker_control:io result.irc_func \
	run function vp_core:call_irc_func with storage marker_control:io result
data remove entity @s interaction