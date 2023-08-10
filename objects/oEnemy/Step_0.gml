vsp = vsp + grv;
//Jumps
if (!timestop)
{
	image_speed = 1;
	Enemy_movement();
	//Animation

	if (!place_meeting(x,y+1,oWall))
	{
		sprite_index = sBandit_lightJ;
		image_speed = 1;
		if (sign(vsp) > 0) image_index = 5;
		else if (sign(vsp) < 0) image_index	=1 ;
	}

	else
	{
		image_speed = 1;
	
		if (hsp == 0)
		{
			sprite_index = sBandit_light;
		
		}
		else
		{
	
			sprite_index = sBandit_lightR;
		}
	
	}

	if (hsp != 0) image_xscale = sign(hsp)*-1;

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



