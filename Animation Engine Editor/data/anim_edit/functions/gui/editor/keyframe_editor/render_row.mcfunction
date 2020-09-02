scoreboard players operation $_get_anim _anim = @s _anim_anim_id
scoreboard players set $_get_tick _anim 0
data modify storage anim:editor col_preview_append set value {}
execute store result storage anim:editor col_preview_append.tick int 1 run scoreboard players operation $_get_tick _anim += @s _anim_page
function anim_edit:gui/editor/keyframe_editor/tick_to_sec
execute store result storage anim:editor col_preview_append.sec1 int 1 run scoreboard players get $_sec1 _anim
execute store result storage anim:editor col_preview_append.sec2 int 1 run scoreboard players get $_sec2 _anim
execute store result storage anim:editor col_preview_append.sec3 int 1 run scoreboard players get $_sec3 _anim
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida if score @s _anim_idb = $_get_part _anim run scoreboard players set $_part_exists _anim 1
execute as @e[tag=anim_part] if score @s _anim_ida = @e[tag=anim_model_select,limit=1] _anim_ida if score @s _anim_idb = $_get_part _anim run data modify storage anim:editor row_name set from entity @s CustomName
#Get 1-20 column data
data modify storage anim:editor row_result set value []
scoreboard players set $_render_col _anim 1
#Calc tick preview only when it's rendering first time
execute if score $_render_row _anim matches 1 run data modify storage anim:editor col_preview set value []
execute if score $_render_row _anim matches 1 run data modify storage anim:editor col_preview append from storage anim:editor col_preview_append
function anim_edit:gui/editor/keyframe_editor/render_col
function anim_edit:search_model
execute if score $_part_exists _anim matches 1 if score $_get_part _anim matches ..9 run data modify storage anim:editor row_number set value '[{"score":{"name":"$_get_part","objective":"_anim"},"color":"aqua","hoverEvent":{"action":"show_text","contents":{"color":"yellow","nbt":"row_name","storage":"anim:editor","interpret":true}}},"  "]'
execute if score $_part_exists _anim matches 1 if score $_get_part _anim matches 10..99 run data modify storage anim:editor row_number set value '[{"score":{"name":"$_get_part","objective":"_anim"},"color":"aqua","hoverEvent":{"action":"show_text","contents":{"color":"yellow","nbt":"row_name","storage":"anim:editor","interpret":true}}}," "]'
execute if score $_part_exists _anim matches 1 if score $_get_part _anim matches 100.. run data modify storage anim:editor row_number set value '{"score":{"name":"$_get_part","objective":"_anim"},"color":"aqua","hoverEvent":{"action":"show_text","contents":{"color":"yellow","nbt":"row_name","storage":"anim:editor","interpret":true}}}'
execute unless score $_part_exists _anim matches 1 if score $_get_part _anim matches ..9 run data modify storage anim:editor row_number set value '[{"score":{"name":"$_get_part","objective":"_anim"},"color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"No anim part with id of ","color":"gray"},{"score":{"name":"$_get_part","objective":"_anim"}}]}},"  "]'
execute unless score $_part_exists _anim matches 1 if score $_get_part _anim matches 10..99 run data modify storage anim:editor row_number set value '[{"score":{"name":"$_get_part","objective":"_anim"},"color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"No anim part with id of ","color":"gray"},{"score":{"name":"$_get_part","objective":"_anim"}}]}}," "]'
execute unless score $_part_exists _anim matches 1 if score $_get_part _anim matches 100.. run data modify storage anim:editor row_number set value '{"score":{"name":"$_get_part","objective":"_anim"},"color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"No anim part with id of ","color":"gray"},{"score":{"name":"$_get_part","objective":"_anim"}}]}}'
tellraw @s ["  ",{"nbt":"row_number","storage":"anim:editor","interpret":true}," ",{"nbt":"row_result[0]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[0].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[0].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[0].sec2","storage":"anim:editor"},{"nbt":"col_preview[0].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[1]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[1].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[1].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[1].sec2","storage":"anim:editor"},{"nbt":"col_preview[1].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[2]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[2].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[2].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[2].sec2","storage":"anim:editor"},{"nbt":"col_preview[2].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[3]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[3].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[3].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[3].sec2","storage":"anim:editor"},{"nbt":"col_preview[3].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[4]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[4].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[4].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[4].sec2","storage":"anim:editor"},{"nbt":"col_preview[4].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[5]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[5].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[5].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[5].sec2","storage":"anim:editor"},{"nbt":"col_preview[5].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[6]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[6].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[6].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[6].sec2","storage":"anim:editor"},{"nbt":"col_preview[6].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[7]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[7].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[7].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[7].sec2","storage":"anim:editor"},{"nbt":"col_preview[7].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[8]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[8].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[8].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[8].sec2","storage":"anim:editor"},{"nbt":"col_preview[8].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[9]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[9].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[9].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[9].sec2","storage":"anim:editor"},{"nbt":"col_preview[9].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[10]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[10].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[10].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[10].sec2","storage":"anim:editor"},{"nbt":"col_preview[10].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[11]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[11].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[11].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[11].sec2","storage":"anim:editor"},{"nbt":"col_preview[11].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[12]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[12].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[12].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[12].sec2","storage":"anim:editor"},{"nbt":"col_preview[12].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[13]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[13].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[13].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[13].sec2","storage":"anim:editor"},{"nbt":"col_preview[13].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[14]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[14].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[14].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[14].sec2","storage":"anim:editor"},{"nbt":"col_preview[14].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[15]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[15].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[15].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[15].sec2","storage":"anim:editor"},{"nbt":"col_preview[15].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[16]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[16].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[16].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[16].sec2","storage":"anim:editor"},{"nbt":"col_preview[16].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[17]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[17].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[17].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[17].sec2","storage":"anim:editor"},{"nbt":"col_preview[17].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[18]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[18].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[18].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[18].sec2","storage":"anim:editor"},{"nbt":"col_preview[18].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[19]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[19].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[19].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[19].sec2","storage":"anim:editor"},{"nbt":"col_preview[19].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[20]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[20].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[20].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[20].sec2","storage":"anim:editor"},{"nbt":"col_preview[20].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[21]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[21].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[21].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[21].sec2","storage":"anim:editor"},{"nbt":"col_preview[21].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[22]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[22].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[22].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[22].sec2","storage":"anim:editor"},{"nbt":"col_preview[22].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[23]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[23].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[23].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[23].sec2","storage":"anim:editor"},{"nbt":"col_preview[23].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[24]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[24].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[24].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[24].sec2","storage":"anim:editor"},{"nbt":"col_preview[24].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[25]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[25].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[25].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[25].sec2","storage":"anim:editor"},{"nbt":"col_preview[25].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[26]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[26].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[26].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[26].sec2","storage":"anim:editor"},{"nbt":"col_preview[26].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[27]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[27].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[27].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[27].sec2","storage":"anim:editor"},{"nbt":"col_preview[27].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[28]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[28].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[28].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[28].sec2","storage":"anim:editor"},{"nbt":"col_preview[28].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[29]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[29].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[29].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[29].sec2","storage":"anim:editor"},{"nbt":"col_preview[29].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[30]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[30].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[30].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[30].sec2","storage":"anim:editor"},{"nbt":"col_preview[30].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[31]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[31].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[31].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[31].sec2","storage":"anim:editor"},{"nbt":"col_preview[31].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[32]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[32].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[32].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[32].sec2","storage":"anim:editor"},{"nbt":"col_preview[32].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[33]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[33].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[33].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[33].sec2","storage":"anim:editor"},{"nbt":"col_preview[33].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[34]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[34].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[34].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[34].sec2","storage":"anim:editor"},{"nbt":"col_preview[34].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[35]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[35].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[35].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[35].sec2","storage":"anim:editor"},{"nbt":"col_preview[35].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[36]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[36].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[36].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[36].sec2","storage":"anim:editor"},{"nbt":"col_preview[36].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[37]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[37].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[37].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[37].sec2","storage":"anim:editor"},{"nbt":"col_preview[37].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[38]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[38].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[38].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[38].sec2","storage":"anim:editor"},{"nbt":"col_preview[38].sec3","storage":"anim:editor"},"s)"]}},{"nbt":"row_result[39]","storage":"anim:editor","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gray"},{"text":"tick: ","color":"yellow"},{"nbt":"col_preview[39].tick","storage":"anim:editor","color":"yellow"}," (",{"nbt":"col_preview[39].sec1","storage":"anim:editor"},".",{"nbt":"col_preview[39].sec2","storage":"anim:editor"},{"nbt":"col_preview[39].sec3","storage":"anim:editor"},"s)"]}}," ",{"nbt":"after_render_tellraw","storage":"anim:editor","interpret":true}]

data remove storage anim:editor row_result
data remove storage anim:editor after_render_tellraw
scoreboard players reset $_part_exists _anim
data remove storage anim:editor row_name