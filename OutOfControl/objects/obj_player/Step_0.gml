// any one movement key activated will drain stamina, reset the delay alarm and stop regen.

var bbox_side;
xsp = 0;
ysp = 0;

if (moveKeys[0] || moveKeys[1] || moveKeys[2] || moveKeys[3])
{
	global.stamina -= global.staminaRateDecay;
	global.staminaRegenerating = false;
	alarm[0] = global.staminaDelayRegen;
}

// player sprite direction & animation pausing
if (moveKeys[0])
{
	image_speed = 1;
	playerDir = 90;	
}
else if (moveKeys[2])
{
	image_speed = 1;
	playerDir = 270;	
}
else if (moveKeys[1])
{
	image_speed = 1;
	playerDir = 0;	
}
else if (moveKeys[3])
{
	image_speed = 1;
	playerDir = 180;	
}
else
{
	image_speed = 0;
	image_index = 2;
}

// any actions requiring stamina
if (global.stamina > 0)
{	
	if moveKeys[0] xsp += movespeed;
	if moveKeys[2] xsp -= movespeed;

	if moveKeys[3] ysp -= movespeed;
	if moveKeys[1] ysp += movespeed;
	
}

// collision checking w/ "lyr_collision"
if (xsp != 0)
{
	if (xsp > 0) bbox_side = bbox_right; else bbox_side = bbox_left;
	if (tilemap_get_at_pixel(tilemap, bbox_side+xsp, bbox_top) != 0) || (tilemap_get_at_pixel(tilemap, bbox_side+xsp, bbox_bottom) != 0)
	{
		if (xsp > 0) x -= x mod 32;
		else x += (x mod 32);
		xsp = 0;
	}
}

if (ysp != 0)
{
	if (ysp > 0) bbox_side = bbox_bottom; else bbox_side = bbox_top;
	if (tilemap_get_at_pixel(tilemap,bbox_left,bbox_side+ysp, ) != 0) || (tilemap_get_at_pixel(tilemap, bbox_right, bbox_side+ysp) != 0)
	{
		if (ysp > 0) y -= y mod 32; 
		else y += (y mod 32);
		ysp = 0;
	}
}

// add speed	
x += xsp;
y += ysp;

// regen and value validation
if global.stamina < 0 global.stamina = 0;
if global.staminaRegenerating global.stamina += global.staminaRateRegen;
if global.stamina > global.staminaMax global.stamina = global.staminaMax;

// win condition
if tilemap_get_at_pixel(zones, x, y) != 0
{
	if (global.save_data[? "highestUnlockedRoom"] <= global.currentRoomIndex) global.save_data[? "highestUnlockedRoom"] = global.currentRoomIndex + 1;
	room_goto_next();
}
