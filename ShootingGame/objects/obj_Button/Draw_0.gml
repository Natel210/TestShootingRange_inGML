/// @description Insert description here
// You can write your code in this editor
if (m_bPush) 
{
	draw_sprite_ext (m_spr_Idle, -1, x, y,1,1,0,c_white,1);
	//draw_sprite_ext (ButtonSprite , -1, x+30, y+30,Box_Scale_X,Box_Scale_Y,0,c_white,1);
}
else
{
	draw_sprite_ext (m_spr_Push , -1, x, y,1,1,0,c_white,1);
	//draw_sprite_ext (ButtonSprite , -1, x+30, y+30,Box_Scale_X,Box_Scale_Y,0,c_white,1);	
}