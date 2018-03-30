/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 6C6B5642
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 5368C55E
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 4E78A36C
var l4E78A36C_0;
l4E78A36C_0 = mouse_check_button(mb_left);
if (l4E78A36C_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7789F44E
	/// @DnDParent : 4E78A36C
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "3"
	if(cooldown <= 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6FEE36ED
		/// @DnDParent : 7789F44E
		/// @DnDArgument : "var" "currentWeapon"
		if(currentWeapon == 0)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 02C9EC5C
			/// @DnDParent : 6FEE36ED
			/// @DnDArgument : "xpos" "x"
			/// @DnDArgument : "ypos" "y"
			/// @DnDArgument : "objectid" "obj_bullet"
			/// @DnDArgument : "layer" ""layer_bullet""
			/// @DnDSaveInfo : "objectid" "e8f49376-a9f9-4cb3-af22-f8f79a03e93a"
			instance_create_layer(x, y, "layer_bullet", obj_bullet);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1A421E9B
			/// @DnDParent : 6FEE36ED
			/// @DnDArgument : "expr" "15"
			/// @DnDArgument : "var" "cooldown"
			cooldown = 15;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 60E09FE9
		/// @DnDParent : 7789F44E
		/// @DnDArgument : "var" "currentWeapon"
		/// @DnDArgument : "value" "1"
		if(currentWeapon == 1)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 1001AA2D
			/// @DnDParent : 60E09FE9
			/// @DnDArgument : "xpos" "x"
			/// @DnDArgument : "ypos" "y"
			/// @DnDArgument : "objectid" "obj_bulletFire"
			/// @DnDArgument : "layer" ""layer_bullet""
			/// @DnDSaveInfo : "objectid" "ba92531b-0acc-4f77-8341-b7b5a5875a58"
			instance_create_layer(x, y, "layer_bullet", obj_bulletFire);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5274420C
			/// @DnDParent : 60E09FE9
			/// @DnDArgument : "expr" "30"
			/// @DnDArgument : "var" "cooldown"
			cooldown = 30;
		}
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 405497AE
	/// @DnDParent : 4E78A36C
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "cooldown"
	cooldown += -1;
}