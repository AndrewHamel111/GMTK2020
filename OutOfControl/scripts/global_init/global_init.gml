function global_init() {
	//show_message("GlobalInit called");
	gml_pragma("global", "global_init()");

	// MACROS
#macro ROOM_COUNT 14

#macro DEFAULT_STAMINA_MAX 120
#macro DEFAULT_STAMINA_RATE_REGEN 3
#macro DEFAULT_STAMINA_RATE_DECAY 1.5
#macro DEFAULT_STAMINA_DELAY_REGEN 30

#macro SAVE_FILE_PATH game_project_name+".dat"

	// ------------------------------------------

	// GLOBALS
	// score related items
	 global.currentRoomIndex = -1;

	global.stamina = DEFAULT_STAMINA_MAX;
	global.staminaMax = DEFAULT_STAMINA_MAX;

	// the max as well as these other values are placed under variables
	// instead, since some rooms will want to modify these values.
	global.staminaRateRegen = DEFAULT_STAMINA_RATE_REGEN;
	global.staminaRateDecay = DEFAULT_STAMINA_RATE_DECAY;
	global.staminaDelayRegen = DEFAULT_STAMINA_DELAY_REGEN;

	global.staminaRegenerating = false;

	// ---------------------------------------------

	// LOAD GAME
	// populate ds_map with default values
	global.save_data = ds_map_create();

	if(file_exists(SAVE_FILE_PATH))
	{
		global.save_data = ds_map_secure_load(SAVE_FILE_PATH);
	}
	else
	{
		resetSaveData();
		ds_map_secure_save(global.save_data, SAVE_FILE_PATH);
	}
}
