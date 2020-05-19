/// @description Insert description here
// You can write your code in this editor
if (-1 == m_id_SideView) { return; }
if (!instance_exists(m_id_SideView)) { m_id_SideView = -1; return; }

with (m_id_SideView)
{
	m_b_IsCheckActiveChange = true;
}
// Inherit the parent event
event_inherited();