#vp_core:guis/souvenirs_chest/update_check
# vp_core:guis/souvenirs_chest/buy_check调用

data modify storage vp_core:io result set from storage iframe:io player.page_data
function vp_core:souvenirs/_update_page_as
data modify storage iframe:io player.page_data set from storage vp_core:io result
function iframe:player_space/_store