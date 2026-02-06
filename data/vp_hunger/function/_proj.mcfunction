#vp_hunger:_proj
# 把数据模板投射到临时对象
# 输入数据模板storage vp_hunger:io input

data modify storage vp_core:io game_namespace set from storage vp_hunger:io input.game_namespace
data modify storage vp_core:io game_prefix set from storage vp_hunger:io input.game_prefix
data modify storage vp_core:io game_name set from storage vp_hunger:io input.game_name
data modify storage vp_core:io game_desc set from storage vp_hunger:io input.game_desc
data modify storage vp_core:io game_display set from storage vp_hunger:io input.game_display
data modify storage vp_core:io version_range set from storage vp_hunger:io input.version_range
data modify storage vp_core:io game_state set from storage vp_hunger:io input.game_state
data modify storage vp_core:io field_size set from storage vp_hunger:io input.field_size
data modify storage vp_core:io field_height set from storage vp_hunger:io input.field_height
data modify storage vp_core:io field_center set from storage vp_hunger:io input.field_center