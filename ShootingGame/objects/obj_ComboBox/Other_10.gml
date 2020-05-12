/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//자신의 맥스 카운트 만큼 
m_b_Active = !m_b_Active;
m_i_MouseSelectItem = -1;
if(global.g_objActiveId == -1)
{
	global.g_objActiveId = id;
}