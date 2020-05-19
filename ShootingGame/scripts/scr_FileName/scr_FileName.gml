
var temp_str_return = "";


var temp_i_BackslashCount = string_count("/",argument0);
var temp_str_dir = argument0;

for (var i = 0; i < temp_i_BackslashCount; ++i) 
{
	var temp_i_BackslashPoint = string_pos("/",temp_str_dir);
	temp_str_dir = string_copy(temp_str_dir, temp_i_BackslashPoint+1, string_length(temp_str_dir)-temp_i_BackslashPoint);
}

var temp_str_ext = script_execute(scr_FileExt,temp_str_dir);

var temp_i_ext = string_pos(temp_str_ext,temp_str_dir);
temp_str_dir = string_copy(temp_str_dir, 1, temp_i_ext-1)

return temp_str_dir ;