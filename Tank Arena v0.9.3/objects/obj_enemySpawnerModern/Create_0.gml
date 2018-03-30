/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 378D1C16
/// @DnDArgument : "var" "enemyCurrent"
enemyCurrent = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3752C798
/// @DnDArgument : "expr" "5"
/// @DnDArgument : "var" "enemyTotal"
enemyTotal = 5;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 63C8D5D6
/// @DnDArgument : "expr" "240"
/// @DnDArgument : "var" "spawnRate"
spawnRate = 240;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 37B31BE0
/// @DnDArgument : "steps" "spawnRate"
alarm_set(0, spawnRate);