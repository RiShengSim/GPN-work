/// @description Insert description here
// You can write your code in this editor
if (!timestop)
{
	if (oPlayer.sprite_index != sPlayer_archerD)
	{
		with (oPlayer)
		{
			hp--;
			flash = 3;
			is_hurt = true;
			hascontrol = false
	
		}
	}
}

instance_destroy();



