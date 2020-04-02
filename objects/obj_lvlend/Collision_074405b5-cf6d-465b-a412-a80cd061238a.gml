/// @desc move to next room

with (obj_player)
{
	if (hascontrol)
	{
		hascontrol = false;
		slidetrans(TRANS_MODE.NEXT);
	}
}