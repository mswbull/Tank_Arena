/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 686394D4
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "c38fe53b-8ae0-4c03-9131-9d82354feef5"
var l686394D4_0 = false;
l686394D4_0 = instance_exists(obj_player);
if(l686394D4_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 16A9AA7C
	/// @DnDParent : 686394D4
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 664D19BD
	/// @DnDParent : 686394D4
	/// @DnDArgument : "speed" "spd"
	speed = spd;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 723F61DA
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 60793667
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7C5950ED
	/// @DnDApplyTo : e557b510-bdf3-4963-8d0e-7d760705809a
	/// @DnDParent : 60793667
	/// @DnDArgument : "expr" "10"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "theScore"
	with(obj_score) {
	theScore += 10;
	
	}

	/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
	/// @DnDVersion : 1
	/// @DnDHash : 3A5DCC08
	/// @DnDParent : 60793667
	/// @DnDArgument : "sound" "snd_death"
	/// @DnDArgument : "pitch" "random_range(0.8,1.2)"
	/// @DnDSaveInfo : "sound" "bff17180-5d34-4bc0-9fc5-34fc00c373fd"
	audio_sound_pitch(snd_death, random_range(0.8,1.2));

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 26F14FF6
	/// @DnDParent : 60793667
	/// @DnDArgument : "soundid" "snd_death"
	/// @DnDSaveInfo : "soundid" "bff17180-5d34-4bc0-9fc5-34fc00c373fd"
	audio_play_sound(snd_death, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3866000D
	/// @DnDParent : 60793667
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 542F3ABB
	/// @DnDParent : 60793667
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_explosion"
	/// @DnDArgument : "layer" ""layer_enemy""
	/// @DnDSaveInfo : "objectid" "ba606559-c898-4268-b180-9dff3cd828b8"
	instance_create_layer(x + 0, y + 0, "layer_enemy", obj_explosion);
}