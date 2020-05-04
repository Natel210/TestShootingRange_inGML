/// @description Insert description here
// You can write your code in this editor



if(0 != sprite_height || 0 != sprite_width)
{ 
	var temp_Sprite_Width = sprite_get_width(m_spr_Draw);
	var temp_Sprite_Height = sprite_get_height(m_spr_Draw);
	var temp_resizeScaleY = 1.0;
	var temp_resizeScaleX = 1.0;

	if(-1 != m_spr_Draw && sprite_index != m_spr_Draw)
	{
		if(sprite_height != temp_Sprite_Height || sprite_width != temp_Sprite_Width)
		{
			temp_resizeScaleY = sprite_height / temp_Sprite_Height;
			temp_resizeScaleX = sprite_width / temp_Sprite_Width;
		}
		draw_sprite_ext (m_spr_Draw, -1, x, y,temp_resizeScaleX, temp_resizeScaleY ,0,c_white,1);
	}
	else
	{
		//draw_sprite_ext (m_spr_Draw, -1, x, y,temp_resizeScaleX, temp_resizeScaleY ,0,c_white,1);
		draw_self();
	}

}

if( "" != m_str_Text )
{
	var temp_TextX = x;
	var temp_TextY = y;
	temp_TextX += (sprite_width * 0.5) ;
	temp_TextY += (sprite_height * 0.5) ;
	draw_set_valign(fa_middle);
	draw_set_halign(fa_middle);
	draw_set_font(font_BaseUIFont);
	draw_text_color(temp_TextX, temp_TextY, m_str_Text, c_black, c_black, c_black, c_black, 1);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	
}

