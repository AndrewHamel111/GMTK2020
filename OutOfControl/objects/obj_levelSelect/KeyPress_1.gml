if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space))
{
	audio_play_sound(snd_menu_accept, 1,0);
	room_goto(menu_index + 6);
}
else if (keyboard_check_pressed(vk_escape))
{
	room_goto(1);	
}