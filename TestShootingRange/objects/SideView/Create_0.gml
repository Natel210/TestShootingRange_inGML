/// @description Insert description here
// You can write your code in this editor
Base_Instance_Pointer_X = 0;
Base_Instance_Pointer_Y = 0;

var StartPanel_X = Base_Instance_Pointer_X + x;
var MainSidePanel_Width = sprite_get_width(Main_BG);
var HotSidePanel_Width = sprite_get_width(Hot_BG);

//인스턴스 설정에서 Is_leftSide를 설정하여 사용
if (true == Is_leftSide) 
{
    // 좌측 정렬 사용
	Id_MainSideView = instance_create_depth(StartPanel_X, y + 0, 0, MainSideView);
	Id_HotSideView = instance_create_depth(StartPanel_X + MainSidePanel_Width, y + 0, 0, HotSideView);	
	HidePanel_Width = MainSidePanel_Width;
}
else
{
	//우측 정렬 적용
	Id_MainSideView = instance_create_depth(StartPanel_X - MainSidePanel_Width, y + 0, 0, MainSideView);
	Id_HotSideView = instance_create_depth(StartPanel_X - ( MainSidePanel_Width + HotSidePanel_Width ) , y + 0, 0, HotSideView);	
	HidePanel_Width = MainSidePanel_Width * -1.0;
}
