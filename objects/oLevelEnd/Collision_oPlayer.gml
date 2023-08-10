/// @description Move to next room

with(oPlayer)
{
	if (hascontrol)
	{
		
		SlideTransition(TRANS_MODE.GOTO,other.target);
	}
}



