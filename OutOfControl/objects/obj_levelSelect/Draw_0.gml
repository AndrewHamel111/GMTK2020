var button_x = 0;
var button_y = 0;

var margin = 128; // was 64

for(var i = 0; i < 3; i++)
{
	// choose row
	button_y = margin + i/4*(room_height-(margin*2));

	for (var j = 0; j < 6; j++)
	{
		if (i + 1 == (ROOM_COUNT/6) && j > (ROOM_COUNT%6)) break;
		
		// choose column
		button_x = margin + j/5*(room_width-(margin*2));
		
		// set color
		room_index = i*6 + j;
		button_color = (global.save_data[? "highestUnlockedRoom"] < room_index) ? c_gray : ((room_index == menu_index) ? c_orange : c_white);
		
		// draw button
		draw_sprite_ext(spr_slave, -1, button_x, button_y, 1,1, 0, button_color, 1);
		
		// button label
		draw_set_font(font_main);
		draw_set_halign(fa_center);
		draw_set_color(c_black);
		draw_text(button_x, button_y, room_index + 1);
	}
}

draw_set_color(c_white);
draw_set_font(font_main);
draw_text(room_width/2,room_height-100,"Press 'ESC' to go back");
