/// @description Progress the transition

if (mode != TRANS_MODE.OFF)
{
	if (mode == TRANS_MODE.INTRO)
	{
		percent =max(0,percent - max((percent/10),0.005));
	}
	else
	{
		percent =min(black_screen,percent + max(((black_screen - percent)/10),0.005));
	}
	if (percent == black_screen) || (percent == 0)
	{
		switch (mode)	
		{
			case TRANS_MODE.INTRO:
			{
				mode = TRANS_MODE.OFF;
				break;
			}
			
			case TRANS_MODE.NEXT:
			{
				
				mode = TRANS_MODE.INTRO;
				room_goto_next();
				global.currentRoom = room_get_name(room);
				SaveGame();
				break;
			}
			case TRANS_MODE.GOTO:
			{
				mode = TRANS_MODE.INTRO;
				room_goto(target)
				if (target != Menu)
				{
					global.currentRoom = room_get_name(target);
					SaveGame();
					break;
				}
				break;
			}
			case TRANS_MODE.RESTART:
			{
				game_restart();
				break;
			}
			
		}
	}
}

if (timestop = true)
{
	timecountdown --;
	if (timecountdown == 0)
	{
		timestop = false;
		with(oEnemySpherehitbox)
		{
			timestop = false;	
		}
		with(oEnemyFirehitbox)
		{
			timestop = false;	
		}
		with(oBlade)
		{
			timestop = false;
		}
		with(oEnemy_Wizard)
		{
			timestop = false;
		}
		with(oFire_Wizard)
		{
			timestop = false;
		}
		with(oEnemyFirehitbox)
		{
			timestop = false;
		}
		with(oEnemy)
		{
			hsp = walksp;
			timestop = false;
		}
		
	}
}


