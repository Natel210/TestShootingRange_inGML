/// @description Insert description here
/// @arg [ (id) Objcet ID , (id) Sprite ID , (float) SizeX , (float) SizeY ]
/// @arg [ (id) Objcet ID , (float) SizeX , (float) SizeY ]
/// @arg [ (id) Objcet ID ]


//명령행 기준으로 해당 그림을 그립니다.

switch (argument_count) {
	case 1:
		break;
	case 3:
		break;
	case 4:
	{
		if (!object_exists(argument0))
		{
			with (argument0) 
			{
				//var h = sprite_height;
				//var w = sprite_width;
				//var xs = image_xscale;
				//var ys = image_yscale;
				var offset_helfX = sprite_get_xoffset(sprite_index) * Box_Scale_X;
				var offset_helfY = sprite_get_yoffset(sprite_index) * Box_Scale_Y;
				
				//이거 나중에 확인해서 갈라야할 듯 ... 9방 
				draw_sprite_ext (argument1 , 0, x - offset_helfX, y - offset_helfY, Box_Scale_X,Box_Scale_Y,0,c_white,1);
				draw_sprite_ext (argument1 , 1, x - offset_helfX, y - offset_helfY, Box_Scale_X,Box_Scale_Y,0,c_white,1);
				draw_sprite_ext (argument1 , 2, x - offset_helfX, y - offset_helfY, Box_Scale_X,Box_Scale_Y,0,c_white,1);
				draw_sprite_ext (argument1 , 3, x - offset_helfX, y - offset_helfY, Box_Scale_X,Box_Scale_Y,0,c_white,1);
				draw_sprite_ext (argument1 , 4, x - offset_helfX, y - offset_helfY, Box_Scale_X,Box_Scale_Y,0,c_white,1);
				draw_sprite_ext (argument1 , 5, x - offset_helfX, y - offset_helfY, Box_Scale_X,Box_Scale_Y,0,c_white,1);
			}
		}
	}
		break;
    default:
        return false;
}

