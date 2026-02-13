#vp_core:souvenirs/reset_loop
# vp_core:souvenirs/_reset_cd调用

data modify storage vp_core:io temp_cmp set from storage vp_core:io result.souvenirs[0].prefix
execute store success score res int run data modify storage vp_core:io temp_cmp set from storage vp_core:io input
execute if score res int matches 0 run data modify storage vp_core:io result.souvenirs[0].timer set from storage vp_core:io result.souvenirs[0].CD

data modify storage vp_core:io result.souvenirs append from storage vp_core:io result.souvenirs[0]
data remove storage vp_core:io result.souvenirs[0]
scoreboard players remove loop int 1
execute if score loop int matches 1.. run function vp_core:souvenirs/reset_loop