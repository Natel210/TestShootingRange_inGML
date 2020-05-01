/// @description Insert description here
// You can write your code in this editor

if(ds_exists(ObjectPartMap,ds_type_map))
{
	for (var tempkey = ds_map_find_first(ObjectPartMap); !is_undefined(tempkey) ; tempkey = ds_map_find_next(ObjectPartMap,tempkey)) 
	{
		instance_destroy(ObjectPartMap[? tempkey]);
	}
	ds_map_destroy(ObjectPartMap);
}
