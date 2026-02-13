#vp_core:guis/souvenirs_shop/iter_page_data
# vp_core:guis/souvenirs_shop/main调用

data modify storage vp_core:io result set from storage iframe:io player.page_data
function vp_core:souvenirs/_iter_page_data
data modify storage iframe:io player.page_data set from storage vp_core:io result

scoreboard players set update_gui int 1