/// @description Insert description here
// You can write your code in this editor

with(oEnemy)
{
	hsp = 0;
	timestop = true;
}
with(oEnemy_Wizard)
{
	hsp = 0;
	timestop = true;
}
with(oFire_Wizard)
{
	hsp = 0;
	timestop = true;
}
with(oEnemySpherehitbox)
{
	timestop = true;
}
with(oEnemyFirehitbox)
{
	timestop = true;
}

with(oBlade)
{
	timestop = true;
}
with(oTransition)
{
	timestop = true;
	timecountdown = 300;
}
with(oSphere)
{
	instance_destroy();	
}
with(oFireBall)
{
	instance_destroy();	
}
instance_destroy();



