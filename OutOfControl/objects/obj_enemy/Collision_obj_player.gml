global.save_data[? "Deaths"]++;
with (obj_player) alarm[0] = 0;
audio_play_sound(snd_hurt,1,0);
global.stamina = global.staminaMax;
room_restart();