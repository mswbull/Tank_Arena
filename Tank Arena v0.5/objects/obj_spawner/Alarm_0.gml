/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 5D4B8C98
/// @DnDArgument : "xpos" "random(room_width)"
/// @DnDArgument : "ypos" "random(room_height)"
/// @DnDArgument : "objectid" "obj_enemyspawn"
/// @DnDArgument : "layer" ""layer_enemy""
/// @DnDSaveInfo : "objectid" "e1d332e2-047c-4566-8963-09d5727d2110"
instance_create_layer(random(room_width), random(room_height), "layer_enemy", obj_enemyspawn);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 501E62AE
/// @DnDArgument : "steps" "spawnrate"
alarm_set(0, spawnrate);