/// kill enemy

if(vsp > 0)
{
	var height = y - other.y;
	if (height < 0)
	{
		vsp = -5;
		with(other)
		{
			instance_create_layer(x,y,layer,obj_enemyD);
			instance_destroy();
		}
	}
image_blend = make_color_rgb(212, 64, 219);
}
else
{
	instance_destroy();
	instance_change(obj_playerD,true);

	direction = point_direction(other.x,other.y,x,y);
	hsp = lengthdir_x(6,direction);
	vsp = lengthdir_y(4,direction)-2;
	if (sign(hsp) != 0) image_xscale = sign(hsp);
}
