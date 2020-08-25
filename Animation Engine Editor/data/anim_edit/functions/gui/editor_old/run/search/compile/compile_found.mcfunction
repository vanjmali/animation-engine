#Setup
# 1000, so it can calculate *1000 on scorebaords
scoreboard players set $_calc_1000 _anim 1000


#extra
# get & apply data
execute store result storage anim:editor result_comp_tick.extra.rotate int 1 run data get storage anim:editor result_get.extra.rotate
execute store result storage anim:editor result_comp_tick.extra.move int 1 run data get storage anim:editor result_get.extra.move
execute if data storage anim:editor result_get.extra.invisible store result storage anim:editor result_comp_tick.extra.invisible int 1 run data get storage anim:editor result_get.extra.invisible
execute if data storage anim:editor result_get.extra.marker store result storage anim:editor result_comp_tick.extra.marker int 1 run data get storage anim:editor result_get.extra.marker
execute if data storage anim:editor result_get.extra.arms store result storage anim:editor result_comp_tick.extra.arms int 1 run data get storage anim:editor result_get.extra.arms
execute if data storage anim:editor result_get.extra.small store result storage anim:editor result_comp_tick.extra.small int 1 run data get storage anim:editor result_get.extra.small
execute if data storage anim:editor result_get.extra.arms run data modify storage anim:editor result_comp_tick.extra.arms set from storage anim:editor result_get.extra.arms
execute if data storage anim:editor result_get.extra.head run data modify storage anim:editor result_comp_tick.extra.head set from storage anim:editor result_get.extra.head
execute if data storage anim:editor result_get.extra.body run data modify storage anim:editor result_comp_tick.extra.body set from storage anim:editor result_get.extra.body
execute if data storage anim:editor result_get.extra.r_arm run data modify storage anim:editor result_comp_tick.extra.r_arm set from storage anim:editor result_get.extra.r_arm
execute if data storage anim:editor result_get.extra.l_arm run data modify storage anim:editor result_comp_tick.extra.l_arm set from storage anim:editor result_get.extra.l_arm
execute if data storage anim:editor result_get.extra.legg run data modify storage anim:editor result_comp_tick.extra.legg set from storage anim:editor result_get.extra.legg
execute if data storage anim:editor result_get.extra.boots run data modify storage anim:editor result_comp_tick.extra.boots set from storage anim:editor result_get.extra.boots

#head x
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.head.x 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.head.x run function anim_edit:gui/editor/run/search/compile/calc/head/x

#head y
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.head.y 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.head.y run function anim_edit:gui/editor/run/search/compile/calc/head/y

#head z
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.head.z 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.head.z run function anim_edit:gui/editor/run/search/compile/calc/head/z


#body x
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.body.x 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.body.x run function anim_edit:gui/editor/run/search/compile/calc/body/x

#body y
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.body.y 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.body.y run function anim_edit:gui/editor/run/search/compile/calc/body/y

#body z
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.body.z 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.body.z run function anim_edit:gui/editor/run/search/compile/calc/body/z


#l_arm x
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.l_arm.x 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.l_arm.x run function anim_edit:gui/editor/run/search/compile/calc/l_arm/x

#l_arm y
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.l_arm.y 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.l_arm.y run function anim_edit:gui/editor/run/search/compile/calc/l_arm/y

#l_arm z
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.l_arm.z 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.l_arm.z run function anim_edit:gui/editor/run/search/compile/calc/l_arm/z


#r_arm x
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.r_arm.x 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.r_arm.x run function anim_edit:gui/editor/run/search/compile/calc/r_arm/x

#r_arm y
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.r_arm.y 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.r_arm.y run function anim_edit:gui/editor/run/search/compile/calc/r_arm/y

#r_arm z
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.r_arm.z 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.r_arm.z run function anim_edit:gui/editor/run/search/compile/calc/r_arm/z


#l_leg x
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.l_leg.x 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.l_leg.x run function anim_edit:gui/editor/run/search/compile/calc/l_leg/x

#l_leg y
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.l_leg.y 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.l_leg.y run function anim_edit:gui/editor/run/search/compile/calc/l_leg/y

#l_leg z
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.l_leg.z 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.l_leg.z run function anim_edit:gui/editor/run/search/compile/calc/l_leg/z


#r_leg x
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.r_leg.x 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.r_leg.x run function anim_edit:gui/editor/run/search/compile/calc/r_leg/x

#r_leg y
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.r_leg.y 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.r_leg.y run function anim_edit:gui/editor/run/search/compile/calc/r_leg/y

#r_leg z
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.rotate.r_leg.z 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.rotate.r_leg.z run function anim_edit:gui/editor/run/search/compile/calc/r_leg/z

# tellraw vanjmali ["",{"nbt":"result_get.position","storage": "anim:editor"}]

#position x
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.position.x 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.position.x run function anim_edit:gui/editor/run/search/compile/calc/pos/x

#position y
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.position.y 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.position.y run function anim_edit:gui/editor/run/search/compile/calc/pos/y

#position z
# get data
execute store result score $_comp_value _anim run data get storage anim:editor result_get.position.z 1000
data remove storage anim:editor temp_get1
# apply data
execute if data storage anim:editor result_get.position.z run function anim_edit:gui/editor/run/search/compile/calc/pos/z
# tellraw vanjmali ["",{"nbt":"result_comp_tick.position","storage": "anim:editor","color":"yellow"}]
# tellraw vanjmali ["",{"nbt":"result_comp_tick_old.position","storage": "anim:editor","color":"gold"}]

#tick_left calc (also in case if the keyframe only has extra on it)
execute if data storage anim:editor result_comp_tick_old store result score $_comp_calc2 _anim run data get storage anim:editor result_comp_tick_old.tick
execute if data storage anim:editor result_comp_tick_old run scoreboard players operation $_comp_value_tick _anim = $_get_tick _anim
execute if data storage anim:editor result_comp_tick_old run scoreboard players operation $_comp_value_tick _anim -= $_comp_calc2 _anim

#Apply everything
execute store result storage anim:editor result_comp_tick.tick int 1 run scoreboard players get $_get_tick _anim
execute if data storage anim:editor result_comp_tick_old store result storage anim:editor result_comp_tick.tick_left int 1 run scoreboard players get $_comp_value_tick _anim
execute if data storage anim:editor result_comp_tick_old run data modify storage anim:editor result_comp append from storage anim:editor result_comp_tick_old
execute if data storage anim:editor result_comp_tick run data modify storage anim:editor result_comp_tick_old set from storage anim:editor result_comp_tick
data remove storage anim:editor result_comp_tick

#Delete the keyframe calculated
function anim_edit:gui/editor/run/search/compile/remove_tick/start

# If it's the last keyframe, just add it to compile array (nothing to calculate)
# execute if score $_comp_kleft _anim matches 1 run data modify storage anim:editor result_comp append from storage anim:editor result_comp_tick_old