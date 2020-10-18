draw_self()
draw_set_font(seed_font);
draw_text(x+32,y+8,"x"+string(global.seeds));
if (global.build_mode == true)
{
	draw_text(x + 350, y+8, "(press X to cancel)");
}