#vp_core:souvenirs/iter_loop
# vp_core:souvenirs/_iter_cd调用

execute store result score res int run data get storage vp_core:io result.souvenirs[0].timer
scoreboard players remove res int 1
execute store result storage vp_core:io result.souvenirs[0].timer int 1 run scoreboard players operation res int > 0 int

data modify storage vp_core:io result.souvenirs append from storage vp_core:io result.souvenirs[0]
data remove storage vp_core:io result.souvenirs[0]
scoreboard players remove loop int 1
execute if score loop int matches 1.. run function vp_core:souvenirs/iter_loop