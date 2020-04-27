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
		with (argument0) 
		{
			draw_sprite_ext (argument1 , 0, x, y,Box_Scale_X,Box_Scale_Y,0,c_white,1);
			draw_sprite_ext (argument1 , 1, x, y,Box_Scale_X,Box_Scale_Y,0,c_white,1);
			draw_sprite_ext (argument1 , 2, x, y,Box_Scale_X,Box_Scale_Y,0,c_white,1);
			draw_sprite_ext (argument1 , 3, x, y,Box_Scale_X,Box_Scale_Y,0,c_white,1);
			draw_sprite_ext (argument1 , 4, x, y,Box_Scale_X,Box_Scale_Y,0,c_white,1);
			draw_sprite_ext (argument1 , 5, x, y,Box_Scale_X,Box_Scale_Y,0,c_white,1);
			
		}
		
		
	}
		break;
    default:
        return false;
}

