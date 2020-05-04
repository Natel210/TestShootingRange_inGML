/// @description Insert description here
// You can write your code in this editor
m_b_IsCheckActiveChange = true;
m_currentWport = view_wport[m_id_currentViewPort];
m_currentHport = view_hport[m_id_currentViewPort];
m_map_ChildUI = ds_map_create();

// Inherit the parent event
event_inherited();