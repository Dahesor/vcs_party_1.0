#vp_hunger:_pop
# 临时对象出栈

data modify storage vp_hunger:io input set from storage vp_hunger:io rec[0]
data remove storage vp_hunger:io rec[0]
function vp_hunger:_proj