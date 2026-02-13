#vp_core:souvenirs/_update_page_as
# 更新玩家页面信息
# 输入storage vp_core:io result
# 输出storage vp_core:io result
# 输出<update_gui,int>
# 传入玩家为执行者

data modify storage vp_core:io temp set from storage vp_core:io result
function vp_core:player_space/_get
data modify storage vp_core:io temp_souvenirs set value []
data modify storage vp_core:io temp_souvenirs set from storage vp_core:io result.souvenirs
data modify storage vp_core:io result set from storage vp_core:io temp
execute store result score loop int run data get storage vp_core:io result.cur
scoreboard players remove loop int 1
execute if score loop int matches 1.. run function vp_core:souvenirs/remove_pages

# 迭代当前页
execute store result score loop int run data get storage vp_core:io result.len
execute if score loop int matches 1.. run function vp_core:souvenirs/update_page_loop