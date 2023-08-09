vsp = vsp + grv;
//Jumps


if (!timestop)
	{
	if (place_meeting(x+hsp,y,oWall))
	{
		while (!place_meeting(x+sign(hsp),y,oWall))
		{
			x = x + sign(hsp);
		}
		hsp = - hsp	;
	}
	x = x + hsp;//This is important

	//Vertical Collision
	if (place_meeting(x , y + vsp , oWall))
	{
		while (!place_meeting(x,y+sign(vsp),oWall))
		{
			y += sign(vsp);
		}
		vsp = 0;
	}
	y = y + vsp;
	//Animation
	if (hsp != 0)
	{
		if (!place_meeting(x,y+1,oWall))
		{
			sprite_index = sWizard_wanderingJ;
			image_speed = 1;
			if (sign(vsp) > 0) image_index = 5;
			else if (sign(vsp) < 0) image_index	=1 ;
		}

		else
		{
			image_speed = 1;
	
			if (hsp == 0)
			{
				sprite_index = sWizard_wandering;
		
			}
			else
			{
	
				sprite_index = sWizard_WanderingW;
			}
	
		}
	}
	else
	{
		sprite_index = sWizard_wandering;
		image_speed = 1;
		
		
	}
	
	
	
	if (hsp != 0) image_xscale = sign(hsp)*1;

}
else {
	image_speed = 0;
	timecountdown --;
	if (timecountdown == 0)
	{
		timestop = false;
		hsp = walksp;
		with(oSphere)
		{
			timestop = false;	
		}
		with(oEnemySpherehitbox)
		{
			timestop = false;	
		}
		
	}
}


