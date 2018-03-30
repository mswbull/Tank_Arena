/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 6C8EB6E8
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "c38fe53b-8ae0-4c03-9131-9d82354feef5"
var l6C8EB6E8_0 = false;
l6C8EB6E8_0 = instance_exists(obj_player);
if(l6C8EB6E8_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 03E82016
	/// @DnDParent : 6C8EB6E8
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 6D88A64F
	/// @DnDParent : 6C8EB6E8
	/// @DnDArgument : "speed" "spd"
	speed = spd;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 1B62AB31
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 04A5B0BB
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 36ECBD62
	/// @DnDApplyTo : e557b510-bdf3-4963-8d0e-7d760705809a
	/// @DnDParent : 04A5B0BB
	/// @DnDArgument : "expr" "15"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "theScore"
	with(obj_score) {
	theScore += 15;
	
	}

	/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
	/// @DnDVersion : 1
	/// @DnDHash : 2C9B51F4
	/// @DnDParent : 04A5B0BB
	/// @DnDArgument : "sound" "snd_death"
	/// @DnDArgument : "pitch" "random_range(0.8,1.2)"
	/// @DnDSaveInfo : "sound" "bff17180-5d34-4bc0-9fc5-34fc00c373fd"
	audio_sound_pitch(snd_death, random_range(0.8,1.2));

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 2FDAF4B5
	/// @DnDParent : 04A5B0BB
	/// @DnDArgument : "soundid" "snd_death"
	/// @DnDSaveInfo : "soundid" "bff17180-5d34-4bc0-9fc5-34fc00c373fd"
	audio_play_sound(snd_death, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 412899F0
	/// @DnDParent : 04A5B0BB
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5B206D92
	/// @DnDParent : 04A5B0BB
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_explosion"
	/// @DnDArgument : "layer" ""layer_enemy""
	/// @DnDSaveInfo : "objectid" "ba606559-c898-4268-b180-9dff3cd828b8"
	instance_create_layer(x + 0, y + 0, "layer_enemy", obj_explosion);
}