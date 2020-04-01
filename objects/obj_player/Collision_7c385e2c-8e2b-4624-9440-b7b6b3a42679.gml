
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
}
