/// @description Insert description here
// You can write your code in this editor
if(ds_exists(global.g_spriteMap,ds_type_map))
{
	for (var temp_key = ds_map_find_first(global.g_spriteMap); !is_undefined(temp_key) ; temp_key = ds_map_find_next(global.g_spriteMap,temp_key)) 
	{
		sprite_delete(global.g_spriteMap[? temp_key]);
	}
	ds_map_destroy(global.g_spriteMap);
}