if (hp <= 0)
{
	audio_play_sound(Enemy_death,6,false);
	with (spherehitbox) instance_destroy();
	
	with (fireballhitbox) instance_destroy();
	instance_destroy();
}
