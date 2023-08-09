if (hp <= 0)
{
	audio_play_sound(Enemy_death,6,false);
	with (mygun) instance_destroy();
	instance_destroy();
}
