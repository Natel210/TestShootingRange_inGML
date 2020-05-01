/// @description Insert description here
// You can write your code in this editor


//Mouse Col (Point 2 pixel)


if (mouse_check_button(mb_left)) 
{
	if (position_meeting(mouse_x,mouse_y, id)) 
	{
		is_Push  = true;
	}
	else
	{
		is_Push  = false;
	}
}
else if (mouse_check_button_released(mb_left))
{
	if (position_meeting(mouse_x,mouse_y, id) && is_Push == true) 
	{
		event_user(0);
	}
	is_Push  = false;
}


