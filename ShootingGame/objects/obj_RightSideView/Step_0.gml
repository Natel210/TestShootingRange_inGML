/// @description Insert description here
// You can write your code in this editor

if(true == m_b_IsCheckActiveChange)
{
	m_b_IsActive = !m_b_IsActive;
	
	var temp_curcam = view_camera[m_id_currentViewPort];
	if(true == m_b_IsActive )
	{
		//camera_set_view_pos(temp_curcam, x, y);
		view_set_xport(m_id_currentViewPort,x);
		view_set_wport(m_id_currentViewPort,m_currentWport);
		camera_set_view_size(temp_curcam, m_currentWport, m_currentHport);
	}
	else
	{
		//camera_set_view_pos(temp_curcam, x + m_f_Movement, y);
		view_set_xport(m_id_currentViewPort,x + m_f_Movement);
		view_set_wport(m_id_currentViewPort,m_currentWport - abs(m_f_Movement));
		camera_set_view_size(temp_curcam, m_currentWport - abs(m_f_Movement), m_currentHport);
	}
	m_b_IsCheckActiveChange  = false;
}

// Inherit the parent event
event_inherited();

