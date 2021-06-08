#macro ENEMY_MOVE_SPEED 6

enemyDir = 0;
enemyColor = c_fuchsia;
tilemap = layer_tilemap_get_id("lyr_collision_enemy");

switch(dir)
{
	case 0: enemyDir = 90; break;
	case 1: enemyDir = 270; break;
	case 2: enemyDir = 0; break;
	case 3:	enemyDir = 180;
}