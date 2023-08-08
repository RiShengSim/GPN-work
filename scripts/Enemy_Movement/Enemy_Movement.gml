// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Enemy_movement(){
	//Horicontal Collision
	if (place_meeting(x+hsp,y,oWall))
	{
		while (!place_meeting(x+sign(hsp),y,oWall))
		{
			x = x + sign(hsp);
		}
		hsp = -hsp	;
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