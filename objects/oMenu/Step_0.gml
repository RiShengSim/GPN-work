/// @description Control Menu

menu_x += (menu_x_target - menu_x) / menu_speed;


//Keyboard Controls
if (menu_control)
{
	if (keyboard_check_pressed(vk_up))
	{
		audio_play_sound(Select_sound,6,false);
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
	}
	
	if (keyboard_check_pressed(vk_down))
	{
		audio_play_sound(Select_sound,6,false);
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items -1;
	}
	if (keyboard_check_pressed(vk_enter))
	{
		menu_x_target = gui_width + 200;
		menu_committed = menu_cursor;
		menu_control = false;
		audio_play_sound(Selected_Sound,6,false);	
		
	}
}

if (menu_x > gui_width + 150) && (menu_committed != -1)
{
	switch (menu_committed)
	{
		case 2:  SlideTransition(TRANS_MODE.GOTO,Intro_Vid); break;
		case 1:
		{
			if (!file_exists("savegame.save"))
			{	
				SlideTransition(TRANS_MODE.NEXT);
				break;
			}
			else
			{
				
			loadGame(); 
			break;
			}
		}
		case 0: game_end(); break;
	}
}