/// @desc slidetrans(mode, targetroom)
/// @arg Mode sets transition mode btwn next, restart, goto
/// @arg Target sets target room when using goto mode

with (obj_trans)
{
	mode = argument[0];
	if (argument_count > 1) target = argument[1];
}
	
