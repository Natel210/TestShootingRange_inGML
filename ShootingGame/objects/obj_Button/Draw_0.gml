/// @description Insert description here
// You can write your code in this editor

if (m_bPush) 
{
	m_spr_Draw  = m_spr_Push;
}
else 
{
	m_spr_Draw  = m_spr_Idle;
}

// Inherit the parent event
event_inherited();

