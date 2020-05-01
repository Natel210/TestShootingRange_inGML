/// @description Insert description here
// You can write your code in this editor

// 보정값 
Base_Instance_Pointer_X = 0;
Base_Instance_Pointer_Y = 0;

StartPanel_X = Base_Instance_Pointer_X + x;

MainSidePanel_Width	 = sprite_get_width(object_get_sprite(Main_BG));
MainSidePanel_Height = sprite_get_height(object_get_sprite(Main_BG));
HotSidePanel_Width	 = sprite_get_width(object_get_sprite(Hot_BG));
HotSidePanel_Height	 = sprite_get_height(object_get_sprite(Hot_BG));



//with(MainSideView)
//{
//	sprite_height;
//	sprite_width;
//}

//temp 저장용
var Id_MainSideView;
var Id_HotSideView;

//인스턴스 설정에서 Is_leftSide를 설정하여 사용
if (true == Is_leftSide) 
{
    // 좌측 정렬 사용
	Id_MainSideView = instance_create_depth(StartPanel_X, y + Base_Instance_Pointer_Y, 
												SideViewDepth.MainSideView, Main_BG);
	Id_HotSideView = instance_create_depth(StartPanel_X + MainSidePanel_Width, y + Base_Instance_Pointer_Y,
												SideViewDepth.HotSideView, Hot_BG);	
	HidePanel_Width = MainSidePanel_Width;
}
else
{
	//우측 정렬 적용
	Id_MainSideView = instance_create_depth(StartPanel_X - MainSidePanel_Width, y + Base_Instance_Pointer_Y, 
												SideViewDepth.MainSideView, Main_BG);
	Id_HotSideView = instance_create_depth(StartPanel_X - ( MainSidePanel_Width + HotSidePanel_Width ) , 
												y + Base_Instance_Pointer_Y, SideViewDepth.HotSideView, Hot_BG);	
	HidePanel_Width = MainSidePanel_Width * -1.0;
}

ObjectPartMap = ds_map_create();
ds_map_add(ObjectPartMap,"HotSideViewPenal",Id_HotSideView);
ds_map_add(ObjectPartMap,"MainSideViewPenal",Id_MainSideView);
