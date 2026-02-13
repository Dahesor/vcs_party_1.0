#vp_core:guis/souvenirs_chest/enter

function iframe:player_space/_get
# 保存末影箱
execute unless data storage iframe:io player.cache_ender run function iframe:_save_ender
# 计时器
execute unless data storage iframe:io player.move_timer run data modify storage iframe:io player.move_timer set value 0
# 页面信息
execute unless data storage iframe:io player.page_data run function vp_core:guis/souvenirs_chest/init_page_data
function iframe:player_space/_store

function vp_core:guis/souvenirs_chest/items