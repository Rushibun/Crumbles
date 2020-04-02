/// @desc restart level

with (obj_player)
{
	if (hascontrol)
	{
		hascontrol = false;
		room_restart();
	}
}