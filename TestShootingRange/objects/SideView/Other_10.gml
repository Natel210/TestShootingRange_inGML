/// @description Insert description here
// You can write your code in this editor


// 패널 활성화 비활성화 로직

//버튼을 눌러서 활성화 되었을 시에 동작하는 것
if (true == Check_ActiveChange) 
{
	var test = HidePanel_Width;
	
	// 활성 동작 
	if (Is_ActiveState) 
	{
		with (Id_MainSideView) 
		{
			x -= test;
		}
		with (Id_HotSideView) 
		{
			x -= test;
		}
	}
	else 
	{
		with (Id_MainSideView) 
		{
			x += test;
		}
		with (Id_HotSideView) 
		{
			x += test;
		}
	}
	// 후처리 
	Is_ActiveState = !Is_ActiveState;
    Check_ActiveChange = false;
}