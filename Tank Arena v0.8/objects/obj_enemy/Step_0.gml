/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 3D83EB89
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "c38fe53b-8ae0-4c03-9131-9d82354feef5"
var l3D83EB89_0 = false;
l3D83EB89_0 = instance_exists(obj_player);
if(l3D83EB89_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 7A989B88
	/// @DnDParent : 3D83EB89
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 6DDA2C7C
	/// @DnDParent : 3D83EB89
	/// @DnDArgument : "speed" "spd"
	speed = spd;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 5701F088
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 58261B40
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 44CFFB89
	/// @DnDApplyTo : e557b510-bdf3-4963-8d0e-7d760705809a
	/// @DnDParent : 58261B40
	/// @DnDArgument : "expr" "5"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "theScore"
	with(obj_score) {
	theScore += 5;
	
	}

	/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
	/// @DnDVersion : 1
	/// @DnDHash : 7925E47A
	/// @DnDParent : 58261B40
	/// @DnDArgument : "sound" "snd_death"
	/// @DnDArgument : "pitch" "random_range(0.8,1.2)"
	/// @DnDSaveInfo : "sound" "bff17180-5d34-4bc0-9fc5-34fc00c373fd"
	audio_sound_pitch(snd_death, random_range(0.8,1.2));

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 3960A496
	/// @DnDParent : 58261B40
	/// @DnDArgument : "soundid" "snd_death"
	/// @DnDSaveInfo : "soundid" "bff17180-5d34-4bc0-9fc5-34fc00c373fd"
	audio_play_sound(snd_death, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 116ACFCF
	/// @DnDParent : 58261B40
	instance_destroy();
}