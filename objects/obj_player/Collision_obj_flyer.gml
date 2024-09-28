/// @description Insert description here
// You can write your code in this editor

if (vspeed > 0)
{
	if (y >= other.y)
	{
		instance_destroy(other)
		vspeed = jump_height/2
	}
} else
{
	instance_destroy()
}