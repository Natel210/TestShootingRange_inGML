/// @description Insert description here
// You can write your code in this editor

if(!(global.g_objActiveId == -1 || global.g_objActiveId == id)){ return; }

// Inherit the parent event
event_inherited();

if(m_b_Active)
{
	for(var i = 0 ; i < m_i_MaxShowItem  ;++i)
	{
		if(true == point_in_rectangle(mouse_x,mouse_y,x + sprite_width *0.025,y+ (sprite_height * (i +1.025)),x + sprite_width *0.025 + sprite_width *0.95,y+ (sprite_height * (i +1.025)) + sprite_height *0.95))
		{
			m_i_MouseSelectItem = i;
			break;
		}
	}
}

if (mouse_check_button_pressed(mb_left))
{
	//완전 외부로 누를 때 
	if(false == point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + (sprite_height * (m_i_MaxShowItem +1))))
	{ m_b_Active = false; }
}
if(mouse_check_button_released(mb_left))
{
	//랙트안에서 누를 때 
	if(true == point_in_rectangle(mouse_x,mouse_y,x,y+ sprite_height,x + sprite_width,y + (sprite_height * (m_i_MaxShowItem + 1))))
	{
		m_i_SelectedItem = m_i_MouseSelectItem + m_i_TopItem;
		m_b_Active = false;
	}
}


if(-1 != m_i_SelectedItem)
{
	m_str_Text = m_ItemArray[| m_i_SelectedItem];
}

if(!m_b_Active) 
{
	global.g_objActiveId = -1;
}



