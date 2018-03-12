/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 54A4FEDF
/// @DnDArgument : "expr" "120"
/// @DnDArgument : "var" "spawnrate"
spawnrate = 120;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 09C5D327
/// @DnDArgument : "steps" "spawnrate"
alarm_set(0, spawnrate);