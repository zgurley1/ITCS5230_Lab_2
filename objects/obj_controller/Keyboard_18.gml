/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(ord("R")))
{
	room_restart()
}
if (keyboard_check_pressed(ord("G")))
{
	game_restart()
}
if (keyboard_check_pressed(ord("L")))
{
	lives += 5
}
if (keyboard_check_pressed(ord("N")))
{
	room_goto_next()
}
if (keyboard_check_pressed(ord("K")))
{
	//Give the player super jump
	obj_player.jump_height *= 4
}

if (keyboard_check_pressed(ord("F")))
{
	//Give the player the ability to fly
	obj_player.can_fly = !obj_player.can_fly 
}

