/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 160B5000
/// @DnDArgument : "var" "instance_number(obj_enemyModern)"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "5"
if(instance_number(obj_enemyModern) < 5)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 73600784
	/// @DnDParent : 160B5000
	/// @DnDArgument : "var" "enemyCurrent"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "enemyTotal"
	if(enemyCurrent < enemyTotal)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7AED7FD6
		/// @DnDParent : 73600784
		/// @DnDArgument : "xpos" "random(room_width)"
		/// @DnDArgument : "ypos" "random(room_height)"
		/// @DnDArgument : "objectid" "obj_enemyModernSpawn"
		/// @DnDArgument : "layer" ""layer_enemy""
		/// @DnDSaveInfo : "objectid" "1b4c9e73-5357-4200-9bc9-a2c5d56ca932"
		instance_create_layer(random(room_width), random(room_height), "layer_enemy", obj_enemyModernSpawn);
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 4A593B3F
		/// @DnDParent : 73600784
		/// @DnDArgument : "steps" "spawnRate"
		alarm_set(0, spawnRate);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 59E6C0CA
		/// @DnDParent : 73600784
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "enemyCurrent"
		enemyCurrent += 1;
	}
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 77425871
/// @DnDArgument : "steps" "spawnRate"
alarm_set(0, spawnRate);