execute store result score @s _anim_calc run data get entity @s Pose.RightLeg[1] 1000
scoreboard players operation @s _anim_calc += @s _anim_rly
scoreboard players operation @s _anim_hx += @s _anim_rly_ease
execute store result entity @s Pose.RightLeg[1] float 0.001 run scoreboard players get @s _anim_calc
scoreboard players reset @s _anim_calc