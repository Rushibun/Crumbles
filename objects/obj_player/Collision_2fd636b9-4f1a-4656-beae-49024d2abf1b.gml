
if(vsp > 0)
{
	var height = y - other.y;
	if (height < 0)
	{
		vsp = -6;
		with(other)
		{
			instance_create_layer(x,y,layer,obj_enemy2D);
			instance_destroy();
		}
	}
}
