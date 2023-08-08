vsp = vsp + grv;
//Jumps
if (!timestop)
	{
	Enemy_movement();
	

}
else {
	image_speed = 0;
	timecountdown --;
	if (timecountdown == 0)
	{
		timestop = false;
		hsp = walksp;
		
	}
}



