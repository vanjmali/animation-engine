#>Searches for anim_part with correct ID and selects it with anim_part_menu_sel
execute as @e[type=armor_stand,tag=anim_part] if score @s _anim_ida = @e[tag=anim_main_select,limit=1] _anim_ida if score @s _anim_idb = $_id_search _anim run tag @s add anim_part_menu_sel
tag @e[type=armor_stand,tag=anim_part_menu_sel] add anim_part_menu

#>if needed anim_part was found add text to the list with info about the anim_part
execute if score $_get_search _anim matches 1 as @e[tag=anim_part_menu_sel] run tellraw @p[tag=anim_user] [{"text":" ","color":"gray","clickEvent":{"action": "run_command","value": "/function anim_edit:gui/main/run/menu4/edit1"},"hoverEvent":{"action": "show_text","contents":[{"text":"Anim part ","color":"gray"},{"nbt":"CustomName","entity":"@s","color":"green","interpret":true}," has:\n",{"text":" Head: ","color":"red"},{"nbt":"ArmorItems[3].id","entity":"@s","color":"white"},{"text":"\n Body: ","color":"blue"},{"nbt":"ArmorItems[2].id","entity":"@s","color":"white"},{"text":"\n Right Arm: ","color":"dark_purple"},{"nbt":"HandItems[0].id","entity":"@s","color":"white"},{"text":"\n Left Arm: ","color":"light_purple"},{"nbt":"HandItems[1].id","entity":"@s","color":"white"},{"text":"\n Leggings: ","color":"dark_green"},{"nbt":"ArmorItems[1].id","entity":"@s","color":"white"},{"text":"\n Boots: ","color":"green"},{"nbt":"ArmorItems[0].id","entity":"@s","color":"white"}]}},{"score":{"name":"$_id_search","objective":"_anim"}},". ",{"nbt":"CustomName","entity":"@s","color":"green","interpret":true}]
execute if score $_get_search _anim matches 2 as @e[tag=anim_part_menu_sel] run tellraw @p[tag=anim_user] [{"text":" ","color":"gray","clickEvent":{"action": "run_command","value": "/function anim_edit:gui/main/run/menu4/edit2"},"hoverEvent":{"action": "show_text","contents":[{"text":"Anim part ","color":"gray"},{"nbt":"CustomName","entity":"@s","color":"green","interpret":true}," has:\n",{"text":" Head: ","color":"red"},{"nbt":"ArmorItems[3].id","entity":"@s","color":"white"},{"text":"\n Body: ","color":"blue"},{"nbt":"ArmorItems[2].id","entity":"@s","color":"white"},{"text":"\n Right Arm: ","color":"dark_purple"},{"nbt":"HandItems[0].id","entity":"@s","color":"white"},{"text":"\n Left Arm: ","color":"light_purple"},{"nbt":"HandItems[1].id","entity":"@s","color":"white"},{"text":"\n Leggings: ","color":"dark_green"},{"nbt":"ArmorItems[1].id","entity":"@s","color":"white"},{"text":"\n Boots: ","color":"green"},{"nbt":"ArmorItems[0].id","entity":"@s","color":"white"}]}},{"score":{"name":"$_id_search","objective":"_anim"}},". ",{"nbt":"CustomName","entity":"@s","color":"green","interpret":true}]
execute if score $_get_search _anim matches 3 as @e[tag=anim_part_menu_sel] run tellraw @p[tag=anim_user] [{"text":" ","color":"gray","clickEvent":{"action": "run_command","value": "/function anim_edit:gui/main/run/menu4/edit3"},"hoverEvent":{"action": "show_text","contents":[{"text":"Anim part ","color":"gray"},{"nbt":"CustomName","entity":"@s","color":"green","interpret":true}," has:\n",{"text":" Head: ","color":"red"},{"nbt":"ArmorItems[3].id","entity":"@s","color":"white"},{"text":"\n Body: ","color":"blue"},{"nbt":"ArmorItems[2].id","entity":"@s","color":"white"},{"text":"\n Right Arm: ","color":"dark_purple"},{"nbt":"HandItems[0].id","entity":"@s","color":"white"},{"text":"\n Left Arm: ","color":"light_purple"},{"nbt":"HandItems[1].id","entity":"@s","color":"white"},{"text":"\n Leggings: ","color":"dark_green"},{"nbt":"ArmorItems[1].id","entity":"@s","color":"white"},{"text":"\n Boots: ","color":"green"},{"nbt":"ArmorItems[0].id","entity":"@s","color":"white"}]}},{"score":{"name":"$_id_search","objective":"_anim"}},". ",{"nbt":"CustomName","entity":"@s","color":"green","interpret":true}]
execute if score $_get_search _anim matches 4 as @e[tag=anim_part_menu_sel] run tellraw @p[tag=anim_user] [{"text":" ","color":"gray","clickEvent":{"action": "run_command","value": "/function anim_edit:gui/main/run/menu4/edit4"},"hoverEvent":{"action": "show_text","contents":[{"text":"Anim part ","color":"gray"},{"nbt":"CustomName","entity":"@s","color":"green","interpret":true}," has:\n",{"text":" Head: ","color":"red"},{"nbt":"ArmorItems[3].id","entity":"@s","color":"white"},{"text":"\n Body: ","color":"blue"},{"nbt":"ArmorItems[2].id","entity":"@s","color":"white"},{"text":"\n Right Arm: ","color":"dark_purple"},{"nbt":"HandItems[0].id","entity":"@s","color":"white"},{"text":"\n Left Arm: ","color":"light_purple"},{"nbt":"HandItems[1].id","entity":"@s","color":"white"},{"text":"\n Leggings: ","color":"dark_green"},{"nbt":"ArmorItems[1].id","entity":"@s","color":"white"},{"text":"\n Boots: ","color":"green"},{"nbt":"ArmorItems[0].id","entity":"@s","color":"white"}]}},{"score":{"name":"$_id_search","objective":"_anim"}},". ",{"nbt":"CustomName","entity":"@s","color":"green","interpret":true}]
execute if score $_get_search _anim matches 5 as @e[tag=anim_part_menu_sel] run tellraw @p[tag=anim_user] [{"text":" ","color":"gray","clickEvent":{"action": "run_command","value": "/function anim_edit:gui/main/run/menu4/edit5"},"hoverEvent":{"action": "show_text","contents":[{"text":"Anim part ","color":"gray"},{"nbt":"CustomName","entity":"@s","color":"green","interpret":true}," has:\n",{"text":" Head: ","color":"red"},{"nbt":"ArmorItems[3].id","entity":"@s","color":"white"},{"text":"\n Body: ","color":"blue"},{"nbt":"ArmorItems[2].id","entity":"@s","color":"white"},{"text":"\n Right Arm: ","color":"dark_purple"},{"nbt":"HandItems[0].id","entity":"@s","color":"white"},{"text":"\n Left Arm: ","color":"light_purple"},{"nbt":"HandItems[1].id","entity":"@s","color":"white"},{"text":"\n Leggings: ","color":"dark_green"},{"nbt":"ArmorItems[1].id","entity":"@s","color":"white"},{"text":"\n Boots: ","color":"green"},{"nbt":"ArmorItems[0].id","entity":"@s","color":"white"}]}},{"score":{"name":"$_id_search","objective":"_anim"}},". ",{"nbt":"CustomName","entity":"@s","color":"green","interpret":true}]
execute if score $_get_search _anim matches 6 as @e[tag=anim_part_menu_sel] run tellraw @p[tag=anim_user] [{"text":" ","color":"gray","clickEvent":{"action": "run_command","value": "/function anim_edit:gui/main/run/menu4/edit6"},"hoverEvent":{"action": "show_text","contents":[{"text":"Anim part ","color":"gray"},{"nbt":"CustomName","entity":"@s","color":"green","interpret":true}," has:\n",{"text":" Head: ","color":"red"},{"nbt":"ArmorItems[3].id","entity":"@s","color":"white"},{"text":"\n Body: ","color":"blue"},{"nbt":"ArmorItems[2].id","entity":"@s","color":"white"},{"text":"\n Right Arm: ","color":"dark_purple"},{"nbt":"HandItems[0].id","entity":"@s","color":"white"},{"text":"\n Left Arm: ","color":"light_purple"},{"nbt":"HandItems[1].id","entity":"@s","color":"white"},{"text":"\n Leggings: ","color":"dark_green"},{"nbt":"ArmorItems[1].id","entity":"@s","color":"white"},{"text":"\n Boots: ","color":"green"},{"nbt":"ArmorItems[0].id","entity":"@s","color":"white"}]}},{"score":{"name":"$_id_search","objective":"_anim"}},". ",{"nbt":"CustomName","entity":"@s","color":"green","interpret":true}]
execute if score $_get_search _anim matches 7 as @e[tag=anim_part_menu_sel] run tellraw @p[tag=anim_user] [{"text":" ","color":"gray","clickEvent":{"action": "run_command","value": "/function anim_edit:gui/main/run/menu4/edit7"},"hoverEvent":{"action": "show_text","contents":[{"text":"Anim part ","color":"gray"},{"nbt":"CustomName","entity":"@s","color":"green","interpret":true}," has:\n",{"text":" Head: ","color":"red"},{"nbt":"ArmorItems[3].id","entity":"@s","color":"white"},{"text":"\n Body: ","color":"blue"},{"nbt":"ArmorItems[2].id","entity":"@s","color":"white"},{"text":"\n Right Arm: ","color":"dark_purple"},{"nbt":"HandItems[0].id","entity":"@s","color":"white"},{"text":"\n Left Arm: ","color":"light_purple"},{"nbt":"HandItems[1].id","entity":"@s","color":"white"},{"text":"\n Leggings: ","color":"dark_green"},{"nbt":"ArmorItems[1].id","entity":"@s","color":"white"},{"text":"\n Boots: ","color":"green"},{"nbt":"ArmorItems[0].id","entity":"@s","color":"white"}]}},{"score":{"name":"$_id_search","objective":"_anim"}},". ",{"nbt":"CustomName","entity":"@s","color":"green","interpret":true}]

#>else if not found, add text with 'none' to the list 
execute if score $_get_search _anim matches 1 unless entity @e[tag=anim_part_menu_sel] run tellraw @p[tag=anim_user] [{"text":" ","color":"gray","clickEvent":{"action": "run_command","value": "/function anim_edit:gui/main/run/menu4/edit1"},"hoverEvent":{"action": "show_text","contents":[{"text":"Anim part with id of ","color":"gray"},{"score":{"name":"$_id_search","objective":"_anim"}}," doesn't exist, click to create new"]}},{"score":{"name":"$_id_search","objective":"_anim"}},". None"]
execute if score $_get_search _anim matches 2 unless entity @e[tag=anim_part_menu_sel] run tellraw @p[tag=anim_user] [{"text":" ","color":"gray","clickEvent":{"action": "run_command","value": "/function anim_edit:gui/main/run/menu4/edit2"},"hoverEvent":{"action": "show_text","contents":[{"text":"Anim part with id of ","color":"gray"},{"score":{"name":"$_id_search","objective":"_anim"}}," doesn't exist, click to create new"]}},{"score":{"name":"$_id_search","objective":"_anim"}},". None"]
execute if score $_get_search _anim matches 3 unless entity @e[tag=anim_part_menu_sel] run tellraw @p[tag=anim_user] [{"text":" ","color":"gray","clickEvent":{"action": "run_command","value": "/function anim_edit:gui/main/run/menu4/edit3"},"hoverEvent":{"action": "show_text","contents":[{"text":"Anim part with id of ","color":"gray"},{"score":{"name":"$_id_search","objective":"_anim"}}," doesn't exist, click to create new"]}},{"score":{"name":"$_id_search","objective":"_anim"}},". None"]
execute if score $_get_search _anim matches 4 unless entity @e[tag=anim_part_menu_sel] run tellraw @p[tag=anim_user] [{"text":" ","color":"gray","clickEvent":{"action": "run_command","value": "/function anim_edit:gui/main/run/menu4/edit4"},"hoverEvent":{"action": "show_text","contents":[{"text":"Anim part with id of ","color":"gray"},{"score":{"name":"$_id_search","objective":"_anim"}}," doesn't exist, click to create new"]}},{"score":{"name":"$_id_search","objective":"_anim"}},". None"]
execute if score $_get_search _anim matches 5 unless entity @e[tag=anim_part_menu_sel] run tellraw @p[tag=anim_user] [{"text":" ","color":"gray","clickEvent":{"action": "run_command","value": "/function anim_edit:gui/main/run/menu4/edit5"},"hoverEvent":{"action": "show_text","contents":[{"text":"Anim part with id of ","color":"gray"},{"score":{"name":"$_id_search","objective":"_anim"}}," doesn't exist, click to create new"]}},{"score":{"name":"$_id_search","objective":"_anim"}},". None"]
execute if score $_get_search _anim matches 6 unless entity @e[tag=anim_part_menu_sel] run tellraw @p[tag=anim_user] [{"text":" ","color":"gray","clickEvent":{"action": "run_command","value": "/function anim_edit:gui/main/run/menu4/edit6"},"hoverEvent":{"action": "show_text","contents":[{"text":"Anim part with id of ","color":"gray"},{"score":{"name":"$_id_search","objective":"_anim"}}," doesn't exist, click to create new"]}},{"score":{"name":"$_id_search","objective":"_anim"}},". None"]
execute if score $_get_search _anim matches 7 unless entity @e[tag=anim_part_menu_sel] run tellraw @p[tag=anim_user] [{"text":" ","color":"gray","clickEvent":{"action": "run_command","value": "/function anim_edit:gui/main/run/menu4/edit7"},"hoverEvent":{"action": "show_text","contents":[{"text":"Anim part with id of ","color":"gray"},{"score":{"name":"$_id_search","objective":"_anim"}}," doesn't exist, click to create new"]}},{"score":{"name":"$_id_search","objective":"_anim"}},". None"]

#>Prepare for another search
scoreboard players add $_get_search _anim 1
scoreboard players add $_id_search _anim 1
tag @e[tag=anim_part_menu_sel,tag=anim_part] remove anim_part_menu_sel
execute if score $_get_search _anim matches ..7 run function anim_edit:gui/main/run/menu4/get/loop