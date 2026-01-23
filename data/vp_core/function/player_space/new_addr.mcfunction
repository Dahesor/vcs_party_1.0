#vp_core:player_space/new_addr
# vp_core:player_space/_reg调用

data modify storage vp_core:io player_space_addr prepend value 0
execute store result storage vp_core:io player_space_addr[0] int 1 run scoreboard players add #id vp_player_id 1