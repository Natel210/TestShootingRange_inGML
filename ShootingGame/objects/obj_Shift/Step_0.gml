/// @description Insert description here
// You can write your code in this editor
if(global.g_objActiveId != -1){ return; }
// Inherit the parent event
event_inherited();

if (-1 == m_id_SideView) { return; }
if (!instance_exists(m_id_SideView)) { m_id_SideView = -1; return; }

var temp_IsActive;
with (m_id_SideView)
{
	temp_IsActive = m_b_IsActive;
}
if(true == temp_IsActive)
{
	m_str_Text = m_strUnActiveText;
}
else
{
	m_str_Text = m_strActiveText;
}
