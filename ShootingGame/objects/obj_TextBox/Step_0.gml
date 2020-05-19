/// @description Insert description here
// You can write your code in this editor
if(!(global.g_objActiveId == -1 || global.g_objActiveId == id)){ return; }

#region 마우스 상태 체크
if (mouse_check_button(mb_left)) 
{
	if (position_meeting(mouse_x,mouse_y, id)) { m_bPush  = true; }
	else { m_bPush  = false; }
}
else if (mouse_check_button_released(mb_left))
{
	if (position_meeting(mouse_x,mouse_y, id) && m_bPush == true) { event_user(0); }
	m_bPush  = false;
}

if (mouse_check_button_pressed(mb_left))
{
	//완전 외부로 누를 때 
	if(false == point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height))
	{ 
		m_b_Active = false; 
		keyboard_string = "";
		global.g_objActiveId = -1;
		if(m_scr_activation != -1 && script_exists(m_scr_activation))
		{
			script_execute(m_scr_activation);
		}
	}
}
#endregion
#region 활성화 시
if(m_b_Active)
{
	
#region 숫자 전용시에 스트링 조정
	if(m_b_OnlyNum)
	{
		var temp_b_Negativeinteger = false;
		if(0 != string_pos("-",keyboard_string))
		{
			temp_b_Negativeinteger = true;
		}
		if(0 != string_pos("+",keyboard_string) || 1 == string_pos("+",keyboard_string))
		{
			temp_b_Negativeinteger = false;
		}
		
		var tmep_i_point = string_pos(".",keyboard_string);
		if(0 != tmep_i_point)
		{
			var temp_str_int = string_copy(keyboard_string,1,tmep_i_point);
			temp_str_int = string_digits(temp_str_int);
			var temp_str_dec = string_copy(keyboard_string,tmep_i_point,string_length(keyboard_string));
			temp_str_dec = string_digits(temp_str_dec);
			keyboard_string = temp_str_int + "." + temp_str_dec;
		}
		else
		{
			keyboard_string = string_digits(keyboard_string);
		}
		if(temp_b_Negativeinteger)
		{
			keyboard_string = "-"+ keyboard_string;
		}
	}
#endregion

#region 폰트 길이 와 스프라이트 길이 비교 => 길이 조정
	var temp_font = draw_get_font();
	draw_set_font(m_font);
	var temp_StringWidth = string_width(keyboard_string);
	draw_set_font(temp_font);
	if(temp_StringWidth > sprite_width)
	{
		keyboard_string = string_copy(keyboard_string,1,string_length(keyboard_string)-1);
	}
#endregion
	
	m_str_Text = keyboard_string;
}
#endregion
