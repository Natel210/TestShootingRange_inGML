with(global.g_mouse )
{
	var temp_Name = "";
	with(m_obj_CurWeapon)
	{
		temp_Name = m_str_WeaponName;
	}
	var temp_NextKey = ds_map_find_next(m_map_Weapons,temp_Name);
	if(!is_undefined(temp_NextKey))
	{
		m_obj_CurWeapon = m_map_Weapons[? temp_NextKey];
	}
	else
	{
		m_obj_CurWeapon = m_map_Weapons[? ds_map_find_first(m_map_Weapons)];
	}
}