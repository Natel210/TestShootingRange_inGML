/// @description Insert description here
/// @arg [ (id) Objcet ID , (id) Sprite ID , (float) SizeX , (float) SizeY ]

//명령행 기준으로 해당 그림을 그립니다.
if (!object_exists(argument0))
{
	with (argument0) 
	{
		//var h = sprite_height;
		//var w = sprite_width;
		//var xs = image_xscale;
		//var ys = image_yscale;
		var offset_helfX = sprite_get_xoffset(sprite_index) * argument2;
		var offset_helfY = sprite_get_yoffset(sprite_index) * argument3;
		
		//이거 나중에 확인해서 갈라야할 듯 ... 9방 
		draw_sprite_ext (argument1 , 0, x - offset_helfX, y - offset_helfY, argument2, argument3, 0, c_white, 1);
		draw_sprite_ext (argument1 , 1, x - offset_helfX, y - offset_helfY, argument2, argument3, 0, c_white, 1);
		draw_sprite_ext (argument1 , 2, x - offset_helfX, y - offset_helfY, argument2, argument3, 0, c_white, 1);
		draw_sprite_ext (argument1 , 3, x - offset_helfX, y - offset_helfY, argument2, argument3, 0, c_white, 1);
		draw_sprite_ext (argument1 , 4, x - offset_helfX, y - offset_helfY, argument2, argument3, 0, c_white, 1);
		draw_sprite_ext (argument1 , 5, x - offset_helfX, y - offset_helfY, argument2, argument3, 0, c_white, 1);
	}
	return true;
}
else
{
	return false;
}