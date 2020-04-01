
vsp = vsp + grv;

if (place_meeting(x + hsp, y, obj_wall))
{
	while (!place_meeting(x + sign(hsp),y,obj_wall))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
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

	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = spr_enemy1;
	}
	else
	{
		sprite_index = spr_enemy1R;
	}

// flipping sprite

if (hsp != 0) image_xscale = sign(hsp) * size;
image_yscale = size;