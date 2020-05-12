/// @description Insert description here
// You can write your code in this editor

enum UI_Type		// UI타입에 대한 열거형
{
	//Base
	Board		= obj_Board,		// 그림 전용
	StaticBox	= obj_StaticBox,	// 고정 택스트 가능 
	TextBox		= obj_TextBox,		// 택스트 그리는것 + 타이핑 가능
	Button		= obj_Button,		// 버튼 
	CheckBox	= obj_CheckBox,		// 체크 
	ComboBox	= obj_ComboBox,		// 바를 누르면 항목이 항목이 나옴
	ListBox		= obj_ListBox,		// 리스트
	
	//TSR
	Shift		= obj_Shift,		// 쉬프트 
	
	//Debug
	
	EnumEnd
}
