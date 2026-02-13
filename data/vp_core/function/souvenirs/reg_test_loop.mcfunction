#vp_core:souvenirs/reg_test_loop
# vp_core:souvenirs/reg_test调用

data modify storage vp_core:io temp.id set from storage vp_core:io reg_test[0]
data modify entity @s item set from storage vp_core:io temp

execute if items entity @s container.0 * run data modify storage vp_core:io reg_test append from storage vp_core:io reg_test[0]
data remove storage vp_core:io reg_test[0]
scoreboard players remove loop int 1
execute if score loop int matches 1.. run function vp_core:souvenirs/reg_test_loop