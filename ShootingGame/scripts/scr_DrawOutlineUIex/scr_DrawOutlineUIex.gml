/// @description Insert description here
/// @arg [ (id) Objcet ID ,PosX,PosY, (float) SizeX , (float) SizeY ]

//명령행 기준으로 해당 그림을 그립니다.
if (!object_exists(argument0))
{
	with (argument0) 
	{
		var temp_oldcolor = draw_get_color();
		draw_set_color(c_black);
		draw_rectangle(x +argument1,y+argument2,x+argument1+argument3,y+argument2+argument4,true);
		draw_set_color(temp_oldcolor);
	}
	return true;
}
else
{
	return false;
}