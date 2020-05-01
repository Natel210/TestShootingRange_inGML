/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

if (-1 == ViewMain) 
{
    show_message_async("not exist object(parent).");
}
else
{
	if (!object_exists(ViewMain))
	{
		var tempButtonText; 
		with (ViewMain) 
		{
			Check_ActiveChange = true;
		    event_user(0);
			if(true == Is_ActiveState)
			{
				tempButtonText = " << ";
			}
			else
			{
				tempButtonText = " >> ";
			}
		}
		ButtonText = tempButtonText;
	}
	

}