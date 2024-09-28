if (instance_place(x,y, obj_ladder))
{
	if (keyboard_check(vk_up) || keyboard_check(vk_down))
	{
		climbing = true
		vspeed = 0
		gravity = 0
		sprite_index = spr_climbing
	}
} else
{
	climbing = false
	sprite_index = spr_player
}

if climbing
{
	if  (keyboard_check(vk_up))
	{
		y -= climb_speed 
	} else if (keyboard_check(vk_down))
	{
		y += climb_speed
	}
	if (instance_place(x,y + climb_speed, obj_block))
	{
		climbing = false
	}
		
} else if (can_fly)
{
	if (keyboard_check(vk_left) and !instance_place(x-move_speed,y,obj_block)) {
		image_xscale = -1
		x += -move_speed
	}

	if (keyboard_check(vk_right) and !instance_place(x+move_speed,y,obj_block)) {
		image_xscale = 1
		x += move_speed
	}

	if (keyboard_check(vk_up) and !instance_place(x,y-move_speed,obj_block))
	{
		y-=move_speed
	
	}
	if (keyboard_check(vk_down) and !instance_place(x,y+move_speed,obj_block))
	{
		y+=move_speed
	
	}
	
	
} else
{
	if (keyboard_check_pressed(ord("Z")))
	{
		instance_create_layer(x,y,"Instances",obj_sword)
	}
	
	if (keyboard_check(vk_left) and !instance_place(x-move_speed,y,obj_block)) {
		image_xscale = -1
		x += -move_speed
	}

	if (keyboard_check(vk_right) and !instance_place(x+move_speed,y,obj_block)) {
		image_xscale = 1
		x += move_speed
	}

	if (keyboard_check(vk_up))
	{
		if (instance_place(x,y+1,obj_block))
		{
			vspeed = jump_height
		
		}
	
	}

	if instance_place(x,y + 1, obj_block)
	{
		gravity = 0
	} else
	{
		gravity = 0.25
	}

	if vspeed >=12
	{
		vspeed = 12
	}
	
	
}