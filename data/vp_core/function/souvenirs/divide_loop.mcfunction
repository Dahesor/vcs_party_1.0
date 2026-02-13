#vp_core:souvenirs/divide_loop
# vp_core:souvenirs/_divide调用

execute store result score temp_price int run data get storage vp_core:io list_souvenirs[0].price
execute if score temp_price int matches ..50 run data modify storage vp_core:io list_souvenirs_0 append from storage vp_core:io list_souvenirs[0]
execute if score temp_price int matches 51..90 run data modify storage vp_core:io list_souvenirs_1 append from storage vp_core:io list_souvenirs[0]
execute if score temp_price int matches 91..170 run data modify storage vp_core:io list_souvenirs_2 append from storage vp_core:io list_souvenirs[0]
execute if score temp_price int matches 171.. run data modify storage vp_core:io list_souvenirs_3 append from storage vp_core:io list_souvenirs[0]

data modify storage vp_core:io list_souvenirs append from storage vp_core:io list_souvenirs[0]
data remove storage vp_core:io list_souvenirs[0]
scoreboard players remove loop int 1
execute if score loop int matches 1.. run function vp_core:souvenirs/divide_loop