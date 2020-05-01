/// @description Insert description here
// You can write your code in this editor

////////////////////////////////////////////////////////////

//부모한테 받은 설정
Is_leftSide = true;

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
Last_y += HotSidePanel_Height * 0.05;
var Id_LShift_Button= instance_create_depth(x, y, SideViewDepth.ButtonDepth, LShift);

if(!object_exists(ObjectPartMap[? "MainSideViewPenal"]))
{
	var child_x = MainSidePanel_Width + (HotSidePanel_Width * 0.5);
	with (Id_LShift_Button) { x = child_x; y = Last_y; ViewMain = id_LeftSideView; }
	ds_map_add(ObjectPartMap,"LShiftButton",Id_LShift_Button);
}
////////////////////////////////////////////////////////////////////

// LCurWeapon Obj 생성 
Last_y += HotSidePanel_Height * 0.08;
var Id_LCurWeapon_Board= instance_create_depth(x, y, SideViewDepth.ButtonDepth, CurWeapon);

if(!object_exists(ObjectPartMap[? "MainSideViewPenal"]))
{
	var child_x = MainSidePanel_Width + (HotSidePanel_Width * 0.5);
	with (Id_LCurWeapon_Board) { x = child_x; y = Last_y; ViewMain = id_LeftSideView; }
	ds_map_add(ObjectPartMap,"LCurWeaponBoard",Id_LCurWeapon_Board);
}

// LChangeWeapon Obj 생성 
Last_y += HotSidePanel_Height * 0.05;
var Id_ChangeWeapon_Button= instance_create_depth(x, y, SideViewDepth.ButtonDepth, ChangeWeapon);

if(!object_exists(ObjectPartMap[? "MainSideViewPenal"]))
{
	var child_x = MainSidePanel_Width + (HotSidePanel_Width * 0.5);
	with (Id_ChangeWeapon_Button) { x = child_x; y = Last_y; ViewMain = id_LeftSideView; }
	ds_map_add(ObjectPartMap,"LChangeWeaponButton",Id_ChangeWeapon_Button);
}

// LCurBulletCount Obj 생성 
Last_y += HotSidePanel_Height * 0.08;
var Id_LCurBulletCount_Board= instance_create_depth(x, y, SideViewDepth.ButtonDepth, CurBulletCount);

if(!object_exists(ObjectPartMap[? "MainSideViewPenal"]))
{
	var child_x = MainSidePanel_Width + (HotSidePanel_Width * 0.5);
	with (Id_LCurBulletCount_Board) { x = child_x; y = Last_y; ViewMain = id_LeftSideView; }
	ds_map_add(ObjectPartMap,"LCurBulletCount",Id_LCurBulletCount_Board);
}

// LReload Obj 생성 
Last_y += HotSidePanel_Height * 0.05;
var Id_Reload_Button= instance_create_depth(x, y, SideViewDepth.ButtonDepth, Reload);
if(!object_exists(ObjectPartMap[? "MainSideViewPenal"]))
{
	var child_x = MainSidePanel_Width + (HotSidePanel_Width * 0.5);
	with (Id_Reload_Button) { x = child_x; y = Last_y; ViewMain = id_LeftSideView; }
	ds_map_add(ObjectPartMap,"LReloadButton",Id_Reload_Button);
}
////////////////////////////////////////////////////////////////////

// LCollisionView Obj 생성 
Last_y += HotSidePanel_Height * 0.1;
var Id_LCollisionView_Button= instance_create_depth(x, y, SideViewDepth.ButtonDepth, CollisionView);
if(!object_exists(ObjectPartMap[? "MainSideViewPenal"]))
{
	var child_x = MainSidePanel_Width + (HotSidePanel_Width * 0.5);
	with (Id_LCollisionView_Button) { x = child_x; y = Last_y; ViewMain = id_LeftSideView; }
	ds_map_add(ObjectPartMap,"LCollisionViewButton",Id_LCollisionView_Button);
}
////////////////////////////////////////////////////////////////////

Last_y += HotSidePanel_Height * 0.18;

// LEffectSizeUp Obj 생성 
var Id_LEffectSizeUp_Button= instance_create_depth(x, y, SideViewDepth.ButtonDepth, SizeUP);
if(!object_exists(ObjectPartMap[? "MainSideViewPenal"]))
{
	var child_x = MainSidePanel_Width + (HotSidePanel_Width * 0.28);
	with (Id_LEffectSizeUp_Button) { x = child_x; y = Last_y; ViewMain = id_LeftSideView; }
	ds_map_add(ObjectPartMap,"LEffectSizeUpButton",Id_LEffectSizeUp_Button);
}

// LEffectSizeDown Obj 생성 
var Id_LEffectSizeDown_Button= instance_create_depth(x, y, SideViewDepth.ButtonDepth, SizeDown);
if(!object_exists(ObjectPartMap[? "MainSideViewPenal"]))
{
	var child_x = MainSidePanel_Width + (HotSidePanel_Width * 0.72);
	with (Id_LEffectSizeDown_Button) { x = child_x; y = Last_y; ViewMain = id_LeftSideView; }
	ds_map_add(ObjectPartMap,"LLEffectSizeDownButton",Id_LEffectSizeDown_Button);
}
////////////////////////////////////////////////////////////////////

Last_y += HotSidePanel_Height * 0.22;

// LSave Obj 생성 
var Id_LSave_Button= instance_create_depth(x, y, SideViewDepth.ButtonDepth, Save);
if(!object_exists(ObjectPartMap[? "MainSideViewPenal"]))
{
	var child_x = MainSidePanel_Width + (HotSidePanel_Width * 0.5);
	with (Id_LSave_Button) { x = child_x; y = Last_y; ViewMain = id_LeftSideView; }
	ds_map_add(ObjectPartMap,"LSaveButton",Id_LSave_Button);
}