#vp_core:souvenirs/buy_checked
# vp_core:souvenirs/_iter_page_data调用

data remove storage vp_core:io temp.components."minecraft:lore"[-1]
data modify storage vp_core:io temp.components."minecraft:lore" append value {"text":"已购买","color":"gold","bold":true}
data modify storage vp_core:io temp.buy_check set value 1b