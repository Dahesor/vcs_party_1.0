#vp_core:souvenirs/_divide
# 按稀有度分层纪念品

data modify storage vp_core:io list_souvenirs_0 set value []
data modify storage vp_core:io list_souvenirs_1 set value []
data modify storage vp_core:io list_souvenirs_2 set value []
data modify storage vp_core:io list_souvenirs_3 set value []

execute store result score loop int run data get storage vp_core:io list_souvenirs
execute if score loop int matches 1.. run function vp_core:souvenirs/divide_loop