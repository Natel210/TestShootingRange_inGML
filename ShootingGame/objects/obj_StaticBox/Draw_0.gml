/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if( "" != m_str_Text )
{
	var temp_TextX = x;
	var temp_TextY = y;
	temp_TextX += (sprite_width * 0.5);
	temp_TextY += (sprite_height * 0.5);
	script_execute(scr_DrawText, m_str_Text, temp_TextX, temp_TextY, m_font);
}