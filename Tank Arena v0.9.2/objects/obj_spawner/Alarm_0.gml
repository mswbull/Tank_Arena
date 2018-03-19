/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 7836C568
/// @DnDArgument : "var" "enemyCount"
/// @DnDArgument : "object" "obj_enemy"
/// @DnDSaveInfo : "object" "7de3d48b-c66c-4d91-bdf4-bb825a8f158b"
enemyCount = instance_number(obj_enemy);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 67D3116B
/// @DnDArgument : "var" "enemyCount"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "20"
if(enemyCount < 20)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5D4B8C98
	/// @DnDParent : 67D3116B
	/// @DnDArgument : "xpos" "random(room_width)"
	/// @DnDArgument : "ypos" "random(room_height)"
	/// @DnDArgument : "objectid" "obj_enemySpawn"
	/// @DnDArgument : "layer" ""layer_enemy""
	/// @DnDSaveInfo : "objectid" "e1d332e2-047c-4566-8963-09d5727d2110"
	instance_create_layer(random(room_width), random(room_height), "layer_enemy", obj_enemySpawn);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 501E62AE
	/// @DnDParent : 67D3116B
	/// @DnDArgument : "steps" "spawnRate"
	alarm_set(0, spawnRate);
}