/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0FA5882C
/// @DnDArgument : "var" "enemyCurrent"
enemyCurrent = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 05E9F0D1
/// @DnDArgument : "expr" "10"
/// @DnDArgument : "var" "enemyTotal"
enemyTotal = 10;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 54A4FEDF
/// @DnDArgument : "expr" "120"
/// @DnDArgument : "var" "spawnRate"
spawnRate = 120;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 09C5D327
/// @DnDArgument : "steps" "spawnRate"
alarm_set(0, spawnRate);