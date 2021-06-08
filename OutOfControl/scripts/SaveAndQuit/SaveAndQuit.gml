// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SaveAndQuit(){
	ds_map_secure_save(global.save_data, SAVE_FILE_PATH);
	game_end();
}