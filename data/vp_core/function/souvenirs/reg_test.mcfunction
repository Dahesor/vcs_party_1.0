#vp_core:souvenirs/reg_test

recipe give @s *
data modify storage vp_core:io reg_test set from entity @s recipeBook.recipes
recipe take @s *

data modify storage vp_core:io temp set value {id:"minecraft:glass",count:1b}
execute store result score loop int run data get storage vp_core:io reg_test
execute if score loop int matches 1.. as 0-0-0-0-2 run function vp_core:souvenirs/reg_test_loop

function vp_core:souvenirs/_clear

summon marker 0 0 0 {Tags:["tmp"]}
execute as @e[tag=tmp] run summon marker 0 0 0 {Tags:["tmp"]}
execute as @e[tag=tmp] run summon marker 0 0 0 {Tags:["tmp"]}
execute as @e[tag=tmp] run summon marker 0 0 0 {Tags:["tmp"]}
execute as @e[tag=tmp] run summon marker 0 0 0 {Tags:["tmp"]}
execute as @e[tag=tmp] run summon marker 0 0 0 {Tags:["tmp"]}
execute as @e[tag=tmp] run summon marker 0 0 0 {Tags:["tmp"]}
execute as @e[tag=tmp] run summon marker 0 0 0 {Tags:["tmp"]}
execute as @e[tag=tmp] run summon marker 0 0 0 {Tags:["tmp"]}
execute as @e[tag=tmp] run summon marker 0 0 0 {Tags:["tmp"]}
execute as @e[tag=tmp] run function vp_core:souvenirs/reg_test/_reg_souvenir
kill @e[tag=tmp]

function vp_core:souvenirs/_divide