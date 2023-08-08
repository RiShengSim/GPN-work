// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Free(){
	//Calculate movement
	
	if (is_hurt)
	{
		if (hsp == 0)
		{
			hsp = enemydirection;
		}
		else{
			if (sign(hsp) == 1)
			{
				
			hsp = 7;
			}
			else{
				hsp = -7;
			}
			hsp *= knockback_fr;
		}
		is_hurt = false;
	}
	else
	{
		var move = key_right - key_left;

		if (shift_key == 1)
		{
			hsp = move * runspeed;
		}
		else
		{
			hsp = move * walksp;
		}
	}
	



	vsp = vsp + grv;
	//Jumps

	if (place_meeting(x, y+1,oWall)) &&  (key_jump)
	{
		jumps = jumpsmax;
	
	}
	else
	{
		if (jumps = jumpsmax) jumps -= 1;
	}

	if ( key_jump) && (jumps > 0 )
	{
		jumps -= 1;
		vsp = -7;
		}




	if (key_attack == 1) && (place_meeting(x,y+1,oWall))
	{
		hsp = 0;
	}


 
	//Horicontal Collision
	if (place_meeting(x+hsp,y,oWall))
	{
		while (!place_meeting(x+sign(hsp),y,oWall))
		{
			x = x + sign(hsp);
		}
		hsp = 0;
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
		sprite_index = sPlayer_archerJ;
		image_speed = 1;
		if (sign(vsp) > 0) image_index = 5;
		else if (sign(vsp) < 0) image_index	=1 ;
	}

	else
	{
		
		if (sprite_index == sPlayer_archerJ) audio_play_sound(Landing,4,false);
		
		image_speed = 1;
		
		if (key_attack==1) 
		{
		
			image_speed = 0;
			sprite_index = sPlayer_archerShoot;
			image_index = 10;
		}
		else if (hsp == 0) && ((hsp - key_attack) == 0)
		{
			sprite_index = sPlayer_archer;
		
		}
		else if (shift_key == 1)
		{
			sprite_index = sPlayer_archerR;
		}
		else if (key_left == 1) || (key_right == 1 )
		{
			sprite_index = sPlayer_archerW;
		}
	


		if (hsp != 0) image_xscale = sign(hsp);
	}
}