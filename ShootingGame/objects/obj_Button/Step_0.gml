/// @description Insert description here
// You can write your code in this editor
//Mouse Col (Point 2 pixel)
if(!(global.g_objActiveId == -1 || global.g_objActiveId == id)){ return; }

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
