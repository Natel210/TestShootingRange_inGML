var temp_i_dotCount = string_count(".",argument0);
var temp_str_dir = argument0;

for (var i = 0; i < temp_i_dotCount; ++i) 
{
	var temp_i_dotPoint = string_pos(".",temp_str_dir);
	temp_str_dir = string_copy(temp_str_dir, temp_i_dotPoint, string_length(temp_str_dir)-temp_i_dotPoint+1);
}
return temp_str_dir;


