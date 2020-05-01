/// @description Insert description here
// You can write your code in this editor

////////////////////////////////////////////////////////////

//부모한테 받은 설정
Is_leftSide = false;

//부모의 생성 이벤트 실행
//Super::
event_inherited();




////////////////////////////////////////////////////////////////////
/* 하위 오브잭트 설정 */
////////////////////////////////////////////////////////////////////
var Last_y = 0;
var id_LeftSideView = id;

////////////////////////////////////////////////////////////////////
// LShift Obj 생성 
var Id_RShift_Button= instance_create_depth(x, y, SideViewDepth.ButtonDepth, RShift);
if(!object_exists(ObjectPartMap[? "MainSideViewPenal"]))
{
	Last_y += HotSidePanel_Height * 0.05;
	var child_x = StartPanel_X - ( MainSidePanel_Width + HotSidePanel_Width ) + (HotSidePanel_Width * 0.5);
	with (Id_RShift_Button) 
	{
		y = Last_y;
		x = child_x;
		ViewMain = id_LeftSideView;
	}
	ds_map_add(ObjectPartMap,"RShiftButton",Id_RShift_Button);
}




