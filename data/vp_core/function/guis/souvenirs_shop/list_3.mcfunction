#vp_core:guis/souvenirs_shop/list_3
# vp_core:guis/souvenirs_shop/main调用

execute at @s run playsound minecraft:block.barrel.close player @s ~ ~ ~ 1.0 2.0
data modify storage vp_core:io result set value {cur:1,total:0,type:3,list:[],len:0}
function vp_core:souvenirs/_get_page_data
data modify storage iframe:io player.page_data set from storage vp_core:io result

scoreboard players set update_gui int 1