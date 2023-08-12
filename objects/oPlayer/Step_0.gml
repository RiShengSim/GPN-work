 //Get player input
if(hascontrol)
	 {
 
		key_left = keyboard_check(vk_left) || keyboard_check(ord("A")); //Check if the player is pressing the arrow key basically a boon yes or no
		key_right = keyboard_check(vk_right)|| keyboard_check(ord("D"));
		shift_key = keyboard_check(vk_shift);
		key_jump = keyboard_check_pressed(vk_space)||keyboard_check_pressed((ord("W")));
		key_jump_held = keyboard_check(vk_space)||keyboard_check(ord("W"));
		key_attack = mouse_check_button(mb_left);

		PlayerState_Free()
	}
	else
	{
		key_right = 0;
		key_left = 0;
		key_jump = 0;
	}
if(!hascontrol) 
{
	
	vsp = 3;
	if (place_meeting(x , y + vsp , oWall))
	{
		while (!place_meeting(x,y+sign(vsp),oWall))
		{
			y += sign(vsp);
		}
		vsp = 0;
	}
	y = y + vsp;
	if(death == false)
	{	
		audio_play_sound(Player_death,3,false);
		hsp = 0;
		image_speed	= 1;
		sprite_index = sPlayer_archerD;
		death = true;
		
	}
	if(image_index == 5)
	{
		image_speed = 0;
	}
	
}
