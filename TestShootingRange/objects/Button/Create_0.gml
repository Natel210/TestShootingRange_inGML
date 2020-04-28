/// @description Insert description here
// You can write your code in this editor

//스프라이트와 사이즈를 미리정해주어야 한다.

//필요 

// instance_create_depth에서 입력 해야할 것 
	// Width
	// height
	// Depth
	
// 	따로 with를 통해 입력해야할 것 
	// y좌표		: y
	// x좌표		: x
	// 종속되는 객체	: ViewMain

// 상속에서 입력해야 할 것 
	// 평상시 스프라이트		:	ButtonSprite
	// 눌렀을 때 스프라이트	:	ButtonPushSprite
	// 삽입할 택스트 문구		:	ButtonText
	// 박스의 X크기			:	Box_Scale_X
	// 박스의 Y크기			:	Box_Scale_Y


image_xscale= Box_Scale_X;
image_yscale= Box_Scale_Y;

sprite_index = ButtonSprite;

// 없는 경우에는 강제 초기값 설정
if(-1 == sprite_index)
{
	show_message_async(object_get_name(object_index)+
	"(" + string(id)+") : isn't valid button, don't create button."+
	"\n							- default Setting -		");
	ButtonText = "TEST TEXT";
	ButtonSprite = ButtonBase;
	ButtonPushSprite = ButtonPush;
	sprite_index = ButtonSprite;
}


