movespeed = 0;

if (dir == 0) // right
{
	movespeed += ENEMY_MOVE_SPEED;
	if (tilemap_get_at_pixel(tilemap, bbox_right + movespeed, bbox_bottom) != 0) || (tilemap_get_at_pixel(tilemap, bbox_right + movespeed, bbox_top) != 0)
	{
		dir = 2;
		movespeed *= -1;
		enemyDir = 270;
	}
	x+= movespeed;
}
else if (dir == 1)	// down
{
	movespeed += ENEMY_MOVE_SPEED;
	if (tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom + movespeed) != 0) || (tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom + movespeed) != 0)
	{
		dir = 3;
		movespeed *= -1;
		enemyDir = 180;
	}
	y+= movespeed;
}
else if (dir == 2)// left
{
	movespeed -= ENEMY_MOVE_SPEED;
	if (tilemap_get_at_pixel(tilemap, bbox_left + movespeed, bbox_bottom) != 0) || (tilemap_get_at_pixel(tilemap, bbox_left + movespeed, bbox_top) != 0)
	{
		dir = 0;
		movespeed *= -1;
		enemyDir = 90;
	}
	x+= movespeed;
}
else if (dir == 3)	// up
{
	movespeed -= ENEMY_MOVE_SPEED;
	if (tilemap_get_at_pixel(tilemap, bbox_left, bbox_top + movespeed) != 0) || (tilemap_get_at_pixel(tilemap, bbox_right, bbox_top + movespeed) != 0)
	{
		dir = 1;
		movespeed *= -1;
		enemyDir = 0;
	}
	y+= movespeed;
}