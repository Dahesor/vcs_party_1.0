#vp_core:hall_example/_proj
# 把数据模板投射到临时对象
# 输入数据模板storage vp_core:io input

data modify storage vp_core:io hall_center set from storage vp_core:io input.hall_center
data modify storage vp_core:io hall_size set from storage vp_core:io input.hall_size
data modify storage vp_core:io hall_height set from storage vp_core:io input.hall_height
data modify storage vp_core:io hall_prefix set from storage vp_core:io input.hall_prefix
data modify storage vp_core:io hall_spawn set from storage vp_core:io input.hall_spawn
data modify storage vp_core:io hall_area_uuid set from storage vp_core:io input.hall_area_uuid