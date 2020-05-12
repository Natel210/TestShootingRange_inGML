/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

 
var temp_TextX = x;
var temp_TextY = y;
temp_TextX += (sprite_width * 0.5);
temp_TextY += (sprite_height * 0.5);



//휠의 자신의 위치 
if(m_b_Active)
{
#region 엑티브 시에 그리기
	draw_sprite_stretched(spr_Base_Push,-1,x ,y+ sprite_height,sprite_width,sprite_height*(m_i_MaxShowItem+0.05));
	for(var i = 0 ; i < m_i_MaxShowItem  ;++i)
	{
		var temp_DrawSpr = spr_Base_Idle;
		if(m_i_MouseSelectItem == i) {temp_DrawSpr = spr_Base_Pushed;}
		draw_sprite_stretched(temp_DrawSpr,-1,x,y+ (sprite_height * (i +1.05)),sprite_width *0.95,sprite_height *0.95);
		script_execute(scr_DrawText, m_ItemArray[| i+m_i_TopItem], temp_TextX+ sprite_width *0.025, temp_TextY + (sprite_height * (i + 1.025)),m_font);
	}
	
	draw_sprite_stretched(spr_Base_Pushed,-1,x + sprite_width *0.955,y+ (sprite_height * 1.05) + (m_i_TopItem * sprite_height * m_i_MaxShowItem  / (ds_list_size(m_ItemArray) + 1 - m_i_MaxShowItem)) 
		,sprite_width *0.040 ,sprite_height * (m_i_MaxShowItem -0.05 )  / (ds_list_size(m_ItemArray) + 1 - m_i_MaxShowItem));
		
	if(m_b_ComboBoxOutLine)
	{
		script_execute(scr_DrawOutlineUI,id,sprite_width,sprite_height*(m_i_MaxShowItem+1.05));
	}	
#endregion
}
else
{
	if(m_b_ComboBoxOutLine)	{script_execute(scr_DrawOutlineUI,id,sprite_width,sprite_height);}
}