if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space))
{
	audio_play_sound(snd_menu_accept, 1,0);

	switch(menu_index)
	{
		case 0: // Play
			if (global.save_data[? "highestUnlockedRoom"] == -1) global.save_data[? "highestUnlockedRoom"] = 0;
			room_goto(global.save_data[? "highestUnlockedRoom"] + 6);
			break;
		case 1: // Level select
			if (global.save_data[? "highestUnlockedRoom"] == -1) audio_play_sound(snd_hurt, 1, 0);
			else room_goto(room_last);
			break;
		case 2: // Reset Save Data
			audio_play_sound(snd_hurt, 1, 0);
			resetSaveData();
			break;
		case 3:
			//game_save(game_project_name+".dat");
			SaveAndQuit();
	}
}