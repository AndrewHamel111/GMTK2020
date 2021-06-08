/// @description Stamina bar

// main stamina bar
draw_sprite_ext(spr_bar, -1, 32, 32 + 32, 1, 1, 0, c_black, 0.2);
draw_sprite_ext(spr_bar, -1, 32, 32 + 32, global.stamina / global.staminaMax, 1, 0, c_lime, 0.8);

regenXScale = 0.4 * (obj_player.alarm[0] / global.staminaDelayRegen);
if (regenXScale < 0) regenXScale = 0;

// regen bar
draw_sprite_ext(spr_bar, -1, 32, 32 + 32 + 32 + 4, 0.4,0.125, 0, c_fuchsia, 0.4);
draw_sprite_ext(spr_bar, -1, 32, 32 + 32 + 32 + 4, 0.4 - regenXScale, 0.125, 0, c_aqua, 0.75);