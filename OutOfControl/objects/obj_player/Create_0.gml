#macro DEFAULT_PLAYER_MOVE_SPEED 4


// x and y speed respectively
xsp = 0;
ysp = 0;
playerDir = 0;

//deaths = array_create(ROOM_COUNT, 0);
//currentRoom = -1;

moveKeys = [false,false,false,false];
movespeed = DEFAULT_PLAYER_MOVE_SPEED;
currentRoomTilesetDimension = 64;

// get the collision box tilemap
tilemap = layer_tilemap_get_id("lyr_collision");
zones = layer_tilemap_get_id("lyr_zones");

// reset the stamina stuff
global.stamina = global.staminaMax;
//global.staminaRegenerating = false;