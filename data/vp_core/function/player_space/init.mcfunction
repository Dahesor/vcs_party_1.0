#vp_core:player_space/init
# vp_core:_init调用

scoreboard objectives add vp_player_id dummy

data modify storage vp_core:io player_space set value {}
data modify storage vp_core:io player_space_table set value {}
data modify storage vp_core:io player_space_addr set value []
scoreboard players set #id vp_player_id -1