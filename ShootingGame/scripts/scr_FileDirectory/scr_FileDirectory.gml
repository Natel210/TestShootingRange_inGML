var temp_i_BackslashCount = string_count("/",argument0);
var temp_str_dir = argument0;

var temp_str_return  = "";


for (var i = 0; i < temp_i_BackslashCount; ++i) 
{
	var temp_i_BackslashPoint = string_pos("/",temp_str_dir);
	
	
	if(i == temp_i_BackslashCount -1)
	{
		temp_str_return += string_copy(temp_str_dir,1,temp_i_BackslashPoint);
	}
	temp_str_dir = string_copy(temp_str_dir, temp_i_BackslashPoint+1, string_length(temp_str_dir)-temp_i_BackslashPoint);
}

return temp_str_return;