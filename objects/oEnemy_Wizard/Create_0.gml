

vsp = 0; //Vertical Speed
grv = 0.3; //Gravity
walksp = 0; //Walk Speed
hsp = 0;

hp = 4;
flash = 0;
hitfrom = 0;

timestop = false;
timecountdown = 0;

dead = false;
dying = false;

mygun = instance_create_layer(x,y,"Spherehitbox",oEnemySpherehitbox)
with(mygun)
{
	owner = other.id
}

