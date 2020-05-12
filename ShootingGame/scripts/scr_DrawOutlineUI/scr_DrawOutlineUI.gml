/// @description Insert description here
/// @arg [ (id) Objcet ID , (float) SizeX , (float) SizeY ]

//명령행 기준으로 해당 그림을 그립니다.
if (!object_exists(argument0))
{
	with (argument0) 
	{
		var temp_oldcolor = draw_get_color();
		draw_set_color(c_black);
		draw_rectangle(x,y,x+argument1,y+argument2,true);
		draw_set_color(temp_oldcolor);
	}
	return true;
}
else
{
	return false;
}