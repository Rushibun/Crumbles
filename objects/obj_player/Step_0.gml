if (hascontrol)
{
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space);
}
else
{
	key_right = 0;
	key_left = 0;
	key_jump = 0;
}

var move = key_right - key_left;
// this is so that you can't move left and right at the same time
// or calculating movement, whatever

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,obj_wall)) and (key_jump)
{
	vsp = -7;
}

if (place_meeting(x + hsp, y, obj_wall))
{
	while (!place_meeting(x + sign(hsp),y,obj_wall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;
// horizontal collision


if (place_meeting(x, y + vsp, obj_wall))
{
	while (!place_meeting(x,y + sign(vsp),obj_wall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;
// vertical collision

// animation vvvv

if (!place_meeting(x,y+1,obj_wall))
{
	sprite_index = spr_playerA;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = spr_player;
	}
	else
	{
		sprite_index = spr_playerR;
	}
}


// flipping sprite

if (hsp != 0) image_xscale = sign(hsp);