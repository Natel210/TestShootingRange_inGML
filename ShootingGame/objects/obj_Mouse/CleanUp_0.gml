/// @description Insert description here
// You can write your code in this editor
if(ds_exists(m_map_Weapons,ds_type_map))
{
	for (var temp_key = ds_map_find_first(m_map_Weapons); !is_undefined(temp_key) ; temp_key = ds_map_find_next(m_map_Weapons,temp_key)) 
	{
		instance_destroy(m_map_Weapons[? temp_key],true);
	}
	ds_map_destroy(m_map_Weapons);
}