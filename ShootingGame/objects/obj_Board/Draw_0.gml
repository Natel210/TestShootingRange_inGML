/// @description Insert description here
// You can write your code in this editor

if(-1 == m_spr_Draw)
{
	m_spr_Draw = m_spr_Idle;
}

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
if(m_UI_Depth != depth)
{
	if(Depth_Group.EnumStart < m_UI_Depth && Depth_Group.EnumEnd > m_UI_Depth )
	{
		depth = m_UI_Depth;
	}
}

//(id) Objcet ID , (id) Sprite ID , (float) SizeX , (float) SizeY
m_spr_Draw = -1;
if(m_b_OutLine)
{
	script_execute(scr_DrawOutlineUI,id,sprite_width,sprite_height);
}

