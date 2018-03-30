/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2BD8441F
/// @DnDArgument : "var" "instance_number(obj_enemy)"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "5"
if(instance_number(obj_enemy) < 5)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5102212B
	/// @DnDParent : 2BD8441F
	/// @DnDArgument : "var" "enemyCurrent"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "enemyTotal"
	if(enemyCurrent < enemyTotal)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5D4B8C98
		/// @DnDParent : 5102212B
		/// @DnDArgument : "xpos" "random(room_width)"
		/// @DnDArgument : "ypos" "random(room_height)"
		/// @DnDArgument : "objectid" "obj_enemySpawn"
		/// @DnDArgument : "layer" ""layer_enemy""
		/// @DnDSaveInfo : "objectid" "e1d332e2-047c-4566-8963-09d5727d2110"
		instance_create_layer(random(room_width), random(room_height), "layer_enemy", obj_enemySpawn);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 65260A03
		/// @DnDParent : 5102212B
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "enemyCurrent"
		enemyCurrent += 1;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 501E62AE
		/// @DnDParent : 5102212B
		/// @DnDArgument : "steps" "spawnRate"
		alarm_set(0, spawnRate);
	}
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 5D097AA2
/// @DnDArgument : "steps" "spawnRate"
alarm_set(0, spawnRate);