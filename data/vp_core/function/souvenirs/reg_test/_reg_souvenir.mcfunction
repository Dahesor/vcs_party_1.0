#vp_core:souvenirs/reg_test/_reg_souvenir
# 注册纪念品

#data remove storage vp_core:io list_souvenirs[{prefix:"vp_core:souvenirs/reg_test/"}]
data modify storage vp_core:io list_souvenirs append value {\
	id:"minecraft:glass",\
	count:1b,\
	components:{\
		"minecraft:custom_name":{"text":"reg_test","color":"aqua"}\
	},\
	prefix:"vp_core:souvenirs/reg_test/",\
	namespace:"vp_core",\
	CD:600,\
	price:35\
}
execute store result storage vp_core:io list_souvenirs[-1].price int 1 run random value 30..450
execute store result storage vp_core:io temp int 1 run random value 0..890
function vp_core:souvenirs/reg_test/random_id with storage vp_core:io {}