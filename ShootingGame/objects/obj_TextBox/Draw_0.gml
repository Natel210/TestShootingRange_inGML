/// @description Insert description here
// You can write your code in this editor

if(m_b_OnlyNum)
{
	m_font = font_BaseUINum;
}
if(m_b_Active)
{
	m_spr_Draw = m_spr_Active;
}
// Inherit the parent event
event_inherited();
