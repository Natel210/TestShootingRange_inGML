/// @description Insert description here
// You can write your code in this editor

if (m_bPush) 
{
	m_spr_Draw  = m_spr_Push;
}
else 
{
	if(!m_b_Active) 
	{
		m_spr_Draw  = m_spr_Idle; 
		if("" != m_strUnActiveText)
		{
			m_str_Text = m_strUnActiveText;
		}
	}
	else 
	{
		m_spr_Draw  = m_spr_Active; 
		if("" != m_strActiveText)
		{
			m_str_Text = m_strActiveText;
		}
	}
}

// Inherit the parent event
event_inherited();