/// @description Insert description here
// You can write your code in this editor
if (oPlayer.hascontrol == true)
{
x = oPlayer.x;
y = oPlayer.y+10;

image_angle = point_direction (x,y,mouse_x,mouse_y);

firingdelay = firingdelay - 1;
if (mouse_check_button_released(mb_right)) && (firingdelay < 0) && (place_meeting(x,y+1,oWall))
{
	audio_play_sound(BowReleased,5,false);
	
		firingdelay = 5
	  with (instance_create_layer(x,y - 15,"Arrows",oArrow))
	  {
		  speed = 25;
		  direction = other.image_angle + random_range (-3,3);
		  image_angle = direction;
	  }
	
	  
}

}


