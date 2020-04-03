if(vsp > 0)
{
	var height = y - other.y;
	if (height < 0)
	{
		vsp = -6;
		with(other)
		{
			instance_create_layer(x,y,layer,obj_enemy3D);
			instance_destroy();
		}
	}
image_blend = make_color_rgb(250, 243, 38);
}
else 
{
	instance_destroy();
	instance_change(obj_playerD,false);

	direction = point_direction(other.x,other.y,x,y);
	hsp = lengthdir_x(6,direction);
	vsp = lengthdir_y(4,direction)-2;
	if (sign(hsp) != 0) image_xscale = sign(hsp);
}

