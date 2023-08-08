if (hp <= 0)
{
	instance_create_layer(x,y,layer,oEnemyD)
	audio_play_sound(Enemy_death,6,false);
	instance_destroy();
}
