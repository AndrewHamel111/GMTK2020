menu_move = keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left) + 6*keyboard_check_pressed(vk_down) - 6*keyboard_check_pressed(vk_up);
menu_move += keyboard_check_pressed(ord("D")) - keyboard_check_pressed(ord("A")) + 6*keyboard_check_pressed(ord("S")) - 6*keyboard_check_pressed(ord("W"));

menu_index += menu_move;

if (menu_index < 0) menu_index += buttons;
if (menu_index >= buttons) menu_index -= buttons;

if (menu_index > global.save_data[? "highestUnlockedRoom"])
{
	menu_index = global.save_data[? "highestUnlockedRoom"];
	audio_play_sound(snd_menu_switch, 1, 0);
}

if (menu_index != last_selected) audio_play_sound(snd_menu_switch, 1, 0);

last_selected = menu_index;