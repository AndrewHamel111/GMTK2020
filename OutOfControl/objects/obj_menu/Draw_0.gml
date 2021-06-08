
if (!ds_exists(global.save_data, ds_type_map))
	show_message("save_data ds doesn't exist.");

draw_set_font(font_main);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
	
var i = 0;
repeat(buttons)
{
	draw_set_color(c_ltgray);
	
	if (menu_index == i) draw_set_color(c_orange);
	
	if ( i == 1 && global.save_data[? "highestUnlockedLevel"] == -1)
	{
		draw_set_color(c_gray);
		if (menu_index == i) draw_set_color(c_maroon);
	}
	
	draw_text(menu_x, menu_y + button_h * i, button[i]);
	i++;
}

draw_set_color(c_ltgray);
draw_set_font(font_small);
draw_set_halign(fa_right);
draw_text(menu_x - 256, menu_y + button_h * 2, "Deaths: "+string(global.save_data[? "Deaths"]));
draw_set_halign(fa_left);
if (global.save_data[? "highestUnlockedRoom"] == ROOM_COUNT) draw_set_color(c_yellow);
draw_text(menu_x + 256, menu_y + button_h * 2, string(global.save_data[? "highestUnlockedRoom"]+1) +"/"+string(ROOM_COUNT)+ " levels completed");

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_ltgray);
draw_set_font(font_main);
draw_text(25,10,"CONTROLS");
draw_set_font(font_small);
draw_text(25,50,"WASD to Move");
draw_text(25,75,"Space to Accept");
draw_text(25,125,"M to Stop Music");
draw_text(25,150,"L for Level Select");
draw_text(25,200,"ESC to Go To Menu / Quit");

draw_set_halign(fa_right);
draw_set_font(font_main);
draw_text(room_width - 25,10,"CREDITS");
draw_set_font(font_small);
draw_text(room_width - 25,50,"Music by");
draw_text(room_width - 25,75,"Tim Beek");
draw_text(room_width - 25,125,"Art by");
draw_text(room_width - 25,150,"Cedric Summers");
draw_text(room_width - 25,200,"Game by");
draw_text(room_width - 25,225,"Andrew Hamel");