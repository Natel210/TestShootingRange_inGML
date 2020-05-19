var temp_sprites = -1;

var temp_FileName = script_execute(scr_FileName,argument0);
var temp_FileExt = script_execute(scr_FileExt,argument0);

if(!ds_map_exists(global.g_spriteMap,argument0))
{
	temp_sprites = sprite_add(argument0, -1, true, true, 0, 0);
	ds_map_add(global.g_spriteMap,temp_FileName+temp_FileExt,temp_sprites);
}
else
{
	temp_sprites = global.g_spriteMap[| temp_sprites];
}
return temp_sprites;