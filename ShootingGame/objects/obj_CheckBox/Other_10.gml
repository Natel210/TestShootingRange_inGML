/// @description Insert description here
// You can write your code in this editor
m_b_Active = !m_b_Active;
if(m_scr_activation != -1 && script_exists(m_scr_activation))
{
	script_execute(m_scr_activation);
}