#vp_core:hall_example/_reg
# 注册大厅，投射到临时对象

data modify storage vp_core:io input set value {}
data modify storage vp_core:io input.hall_center set value [200.0d,-60.0d,50.0d]
data modify storage vp_core:io input.hall_size set value 3
data modify storage vp_core:io input.hall_height set value 1
data modify storage vp_core:io input.hall_prefix set value "vp_core:hall_example/"
data modify storage vp_core:io input.hall_spawn set value [0.0d,3.0d,0.0d]
data modify storage vp_core:io input.hall_area_uuid set value ""

# 注册数据模板投射到临时对象
function vp_core:hall_example/_proj