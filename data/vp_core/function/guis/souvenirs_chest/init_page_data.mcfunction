#vp_core:guis/souvenirs_chest/init_page_data
# vp_core:guis/souvenirs_chest/enter调用

data modify storage vp_core:io result set value {cur:1,total:0,list:[],len:0}
function vp_core:souvenirs/_get_page_as
data modify storage iframe:io player.page_data set from storage vp_core:io result