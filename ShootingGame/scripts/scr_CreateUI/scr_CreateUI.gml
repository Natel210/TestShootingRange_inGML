// @arg [type(str), pos x, pos y, depthID, scale x, scale y]

var temp_returnInst = -1;
if (6 != argument_count ) { return temp_returnInst; }

var temp_depth = argument3;
var temp_xscale = argument4;
var temp_yscale = argument5;

switch (argument0) 
{
    case "Board":
		temp_returnInst = instance_create_depth(argument1,argument2,temp_depth,UI_Type.Board);
        break;
	case "StaticBox":
		temp_returnInst = instance_create_depth(argument1,argument2,temp_depth,UI_Type.StaticBox);
        break;
	case "TextBox":
		temp_returnInst = instance_create_depth(argument1,argument2,temp_depth,UI_Type.TextBox);
        break;
	case "Button":
		temp_returnInst = instance_create_depth(argument1,argument2,temp_depth,UI_Type.Button);
        break;
	case "CheckBox":
		temp_returnInst = instance_create_depth(argument1,argument2,temp_depth,UI_Type.CheckBox);
        break;
	case "ComboBox":
		temp_returnInst = instance_create_depth(argument1,argument2,temp_depth,UI_Type.ComboBox);
        break;
	case "ListBox":
		temp_returnInst = instance_create_depth(argument1,argument2,temp_depth,UI_Type.ListBox);
        break;
		
	//
	case "Shift":
		temp_returnInst = instance_create_depth(argument1,argument2,temp_depth,UI_Type.Shift);
		break;
		
    default:
		temp_returnInst = -1;
        break;
}

if (-1 == temp_returnInst) { return temp_returnInst; }

with (temp_returnInst) 
{
	m_UI_Depth = temp_depth;
	image_xscale = temp_xscale;
	image_yscale = temp_yscale;
}
return temp_returnInst;