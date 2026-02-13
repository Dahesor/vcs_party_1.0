#vp_core:read_player
# 标签#vp_core:read_player
# vp_core:player_main调用

execute store result score vp_crc int run scoreboard players operation @s vp_crc /= 2 int
data modify storage vp_core:io player_dump set from entity @s {}
data modify storage vp_core:io inv set from storage vp_core:io player_dump.Inventory
data modify storage vp_core:io equ set value {}
data modify storage vp_core:io equ set from storage vp_core:io player_dump.equipment
data modify storage vp_core:io equ.offhand.Slot set value -106b
data modify storage vp_core:io equ.feet.Slot set value 100b
data modify storage vp_core:io equ.legs.Slot set value 101b
data modify storage vp_core:io equ.chest.Slot set value 102b
data modify storage vp_core:io equ.head.Slot set value 103b
data modify storage vp_core:io sel set value {}
data modify storage vp_core:io sel set from storage vp_core:io player_dump.SelectedItem
execute store result score sel_slot int run data get storage vp_core:io player_dump.SelectedItemSlot

# 读取末影箱交互英文
scoreboard players operation vp_open_ender int = @s vp_open_ender
scoreboard players set @s vp_open_ender 0

# 读取下蹲行为
scoreboard players operation vp_shift int = @s vp_shift
scoreboard players operation vp_shift_pre int = @s vp_shift_pre
scoreboard players operation @s vp_shift_pre = @s vp_shift
scoreboard players set @s vp_shift 0