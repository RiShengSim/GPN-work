x = owner.x;
y = owner.y+10;

image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);

if (instance_exists(oPlayer))
{
	if (oPlayer.x < x) image_yscale = -image_yscale;
	if (point_distance(oPlayer.x, oPlayer.y,x,y) < 1000)
	{ 
		image_angle = point_direction(x,y,oPlayer.x,oPlayer.y);
		countdown--;
		if (countdown <= 0) && (!timestop)
		{
			countdown = countdownrate;
			with (instance_create_layer(x,y - 15,"Sphere",oSphere))
			{
				speed = 7;
				direction = other.image_angle + random_range (-3,3);
				image_angle = direction;
			}
		}
	}
}





