/// @description Insert description here
// You can write your code in this editor
m_b_Active = !m_b_Active;
if(global.g_objActiveId == -1)
{
	global.g_objActiveId = id;
	keyboard_string = m_str_Text;
}