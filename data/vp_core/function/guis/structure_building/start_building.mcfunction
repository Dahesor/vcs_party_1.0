#vp_core:guis/structure_building/start_building
# vp_core:guis/structure_building/main调用

# 生成structure_builder构造器
data modify storage vp_core:io input set from storage vp_core:class structure_builder_plate
data modify storage vp_core:io input.field_size set from storage vp_core:io field_size
data modify storage vp_core:io input.field_height set from storage vp_core:io field_height
data modify storage vp_core:io input.field_center set from storage vp_core:io field_center
data modify storage vp_core:io input.structure_prefix set from storage vp_core:io structure_prefix
function vp_core:constructors/structure_builder/_new
execute as @e[tag=result,limit=1] run function marker_control:data/_get
data modify storage marker_control:io result.tick_func set value "vp_core:constructors/structure_builder/main"
execute as @e[tag=result,limit=1] run function marker_control:data/_store
tag @e[tag=result,limit=1] add entity_ticked