x = owner.x;
y = owner.y+ 20;

image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);

if (instance_exists(oPlayer))
{
	if (oPlayer.x < x) image_yscale = -image_yscale;
	if (point_distance(oPlayer.x, oPlayer.y,x,y) < 1500)
	{ 
		image_angle = point_direction(x,y,oPlayer.x,oPlayer.y);
		countdown--;
		if (countdown <= 0) && (!timestop)
		{
			countdown = countdownrate;
			with (instance_create_layer(x,y - 15,"FireBall",oSphere22))
			{
				speed = 10;
				direction = other.image_angle + random_range (-2,2);
				image_angle = direction;
			}
		}
	}
}





