

vsp = 0; //Vertical Speed
grv = 0.3; //Gravity
walksp = 0; //Walk Speed
hsp = 0;

hp = 50;
flash = 0;
hitfrom = 0;

timestop = false;
timecountdown = 0;

dead = false;
dying = false;

spherehitbox = instance_create_layer(x,y,"FireBall",oEnemyFirehitbox)
with(spherehitbox)
{
	owner = other.id
}

fireballhitbox = instance_create_layer(x,y,"Sphere",oEnemySpherehitbox)
with(fireballhitbox)
{
	owner = other.id
}
