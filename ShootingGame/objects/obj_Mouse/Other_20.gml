/// @description Insert description here
// You can write your code in this editor

//로딩 부분

if(ds_exists(m_map_Weapons,ds_type_map))
{
	for (var temp_key = ds_map_find_first(m_map_Weapons); !is_undefined(temp_key) ; temp_key = ds_map_find_next(m_map_Weapons,temp_key)) 
	{
		with(m_map_Weapons[? temp_key]) { event_user(10); }
	}
}