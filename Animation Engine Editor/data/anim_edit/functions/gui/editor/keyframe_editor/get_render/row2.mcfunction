execute unless data storage anim:editor got_tick run function anim_edit:gui/editor/keyframe_editor/render_keyframe/no_keyframe/row2
execute unless data storage anim:editor got_tick if score $_got_p_id _anim matches -2147483648..2147483647 run function anim_edit:gui/editor/keyframe_editor/render_keyframe/no_keyframe_sel/row2
execute if data storage anim:editor got_tick run function anim_edit:gui/editor/keyframe_editor/render_keyframe/no_keyframe_open/row2
execute if data storage anim:editor got_tick if data storage anim:editor got_tick.head run function anim_edit:gui/editor/keyframe_editor/render_keyframe/head/row2
execute if data storage anim:editor got_tick if data storage anim:editor got_tick.body run function anim_edit:gui/editor/keyframe_editor/render_keyframe/body/row2
execute if data storage anim:editor got_tick if data storage anim:editor got_tick.l_arm run function anim_edit:gui/editor/keyframe_editor/render_keyframe/l_arm/row2
execute if data storage anim:editor got_tick if data storage anim:editor got_tick.r_arm run function anim_edit:gui/editor/keyframe_editor/render_keyframe/r_arm/row2
execute if data storage anim:editor got_tick if data storage anim:editor got_tick.l_leg run function anim_edit:gui/editor/keyframe_editor/render_keyframe/l_leg/row2
execute if data storage anim:editor got_tick if data storage anim:editor got_tick.r_leg run function anim_edit:gui/editor/keyframe_editor/render_keyframe/r_leg/row2
execute if data storage anim:editor got_tick if data storage anim:editor got_tick.rotation run function anim_edit:gui/editor/keyframe_editor/render_keyframe/rotation/row2
execute if data storage anim:editor got_tick if data storage anim:editor got_tick.position run function anim_edit:gui/editor/keyframe_editor/render_keyframe/pos/row2
execute if data storage anim:editor got_tick if data storage anim:editor got_tick.head if score $_got_p_id _anim matches -2147483648..2147483647 run function anim_edit:gui/editor/keyframe_editor/render_keyframe/head_sel/row2
execute if data storage anim:editor got_tick if data storage anim:editor got_tick.body if score $_got_p_id _anim matches -2147483648..2147483647 run function anim_edit:gui/editor/keyframe_editor/render_keyframe/body_sel/row2
execute if data storage anim:editor got_tick if data storage anim:editor got_tick.l_arm if score $_got_p_id _anim matches -2147483648..2147483647 run function anim_edit:gui/editor/keyframe_editor/render_keyframe/l_arm_sel/row2
execute if data storage anim:editor got_tick if data storage anim:editor got_tick.r_arm if score $_got_p_id _anim matches -2147483648..2147483647 run function anim_edit:gui/editor/keyframe_editor/render_keyframe/r_arm_sel/row2
execute if data storage anim:editor got_tick if data storage anim:editor got_tick.l_leg if score $_got_p_id _anim matches -2147483648..2147483647 run function anim_edit:gui/editor/keyframe_editor/render_keyframe/l_leg_sel/row2
execute if data storage anim:editor got_tick if data storage anim:editor got_tick.r_leg if score $_got_p_id _anim matches -2147483648..2147483647 run function anim_edit:gui/editor/keyframe_editor/render_keyframe/r_leg_sel/row2
execute if data storage anim:editor got_tick if data storage anim:editor got_tick.rotation if score $_got_p_id _anim matches -2147483648..2147483647 run function anim_edit:gui/editor/keyframe_editor/render_keyframe/rotation_sel/row2
execute if data storage anim:editor got_tick if data storage anim:editor got_tick.position if score $_got_p_id _anim matches -2147483648..2147483647 run function anim_edit:gui/editor/keyframe_editor/render_keyframe/pos_sel/row2
execute unless data storage anim:editor got_tick.head unless data storage anim:editor got_tick.body unless data storage anim:editor got_tick.l_arm unless data storage anim:editor got_tick.r_arm unless data storage anim:editor got_tick.l_leg unless data storage anim:editor got_tick.r_leg unless data storage anim:editor got_tick.rotation unless data storage anim:editor got_tick.position run scoreboard players set $_key_empty _anim 1
execute if data storage anim:editor got_tick if score @s _anim_id_player = $_got_p_id _anim unless score $_key_empty _anim matches 1 run function anim_edit:gui/editor/keyframe_editor/render_keyframe/keyframe_open/row2
scoreboard players reset $_key_empty _anim
execute unless score $_part_exists _anim matches 1 if data storage anim:editor got_tick run data modify storage anim:editor append_col set value '{"text":"♦","color":"dark_gray"}'
execute unless score $_part_exists _anim matches 1 unless data storage anim:editor got_tick run data modify storage anim:editor append_col set value '{"text":"-","color":"dark_gray"}'