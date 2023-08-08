/// @description Control Menu

menu_x += (menu_x_target - menu_x) / menu_speed;
if (playmusic)
{
	audio_play_sound(Menu_BGM, 5, false);
	playmusic = false;
}

//Keyboard Controls
if (menu_control)
{
	if (keyboard_check_pressed(vk_up))
	{
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
	}
	
	if (keyboard_check_pressed(vk_down))
	{
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items -1;
	}
	if (keyboard_check_pressed(vk_enter))
	{
		menu_x_target = gui_width + 200;
		menu_committed = menu_cursor;
		menu_control = false;
		audio_stop_all();
	}
}

if (menu_x > gui_width + 150) && (menu_committed != -1)
{
	switch (menu_committed)
	{
		case 2:  SlideTransition(TRANS_MODE.NEXT); break;
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