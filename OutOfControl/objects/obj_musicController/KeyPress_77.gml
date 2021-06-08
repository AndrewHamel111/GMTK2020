/// @description Toggle Music
if (audio_is_playing(mus_bgm))
	audio_stop_sound(mus_bgm);
else
	audio_play_sound(mus_bgm, 10, true);