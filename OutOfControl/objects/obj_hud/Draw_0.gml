/*
draw_set_font(font_main);
draw_set_halign(fa_center);
draw_set_color(c_ltgray);
	
draw_text(x, y, "text");

// Vcenter: 384
// Hcenter: 512
*/

draw_set_font(font_main);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

switch(room_index)
{
	// CHAPTER 1
	 case 0:
		draw_text(156,384,"AVOID BATS");
		draw_text(1024-156,384,"REACH LADDER");
	 break;
	 case 1:
		draw_text(156,384,"BREAK OFTEN");
		draw_text(1024-156,384,"STAMINA LOW");
	 break;
	 case 2:
		draw_text(136,384,"TRY NOT TO");
		draw_text(1024-116,384,"LOSE CONTROL");
	 break;
	 case 3:
	 
	 break;
	 case 4:
	 
	 break;
	 case 5:
	 
	 break;
	 //	CHAPTER 2
	 case 6:
		draw_text(192,384,"SOMETHING IS\nDIFFERENT,");
		draw_set_color(c_lime);
		draw_text(1024-192,768,"YOUR STAMINA\nIS DOUBLE.");
		
		draw_set_color(c_white);
		draw_text(192,1200,"DON'T EXPECT\nMORE GIFTS.");
	 break;
	 case 7:
	 break;
	 case 8:
	 break;
	 case 9:
	 break;
	 case 10:
	 break;
	 case 11:
	 break;
	 case 12:
		 draw_set_color(c_black);
		 draw_set_font(font_small);
		draw_text(192,384,"Everyone get's their inspiration\nfrom somewhere..A short\nentry but it's my first and\ni've learned ALOT.");
		draw_text(1024-192,384,"Thanks for checking out my entry,\nI hope it was mostly fun!\n I plan to add many more levels\nso check out my Itch page in a\ncouple weeks if you're interested :)");
	 break;
}