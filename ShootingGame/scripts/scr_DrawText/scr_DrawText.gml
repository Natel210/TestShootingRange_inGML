// @arg [str, x, y]
// @arg [str, x, y, font]

if (!(4 == argument_count || 3 == argument_count)) { return false; }
var fontSet = font_BaseUIAll;
if (4 == argument_count)
{
	fontSet = argument3;
}

if ("" == argument0) { return false; }

var temp_font = draw_get_font();
var temp_valign = draw_get_valign();
var temp_halign = draw_get_halign();

draw_set_valign(fa_middle);
draw_set_halign(fa_middle);
draw_set_font(fontSet);
draw_text_color(argument1, argument2, argument0, c_black, c_black, c_black, c_black, 1);
draw_set_valign(temp_valign);
draw_set_halign(temp_halign);
draw_set_font(temp_font);

return true;
	


