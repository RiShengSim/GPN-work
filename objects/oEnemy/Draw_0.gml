draw_self();

if (flash >0)
{
	flash--;
	shader_set(shEnemyHit);
	draw_self();
	shader_reset();
	
}



