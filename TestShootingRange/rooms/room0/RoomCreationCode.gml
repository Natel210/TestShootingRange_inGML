var PreviousViewID = layer_get_id("PreviousView");
layer_destroy(PreviousViewID);
var TestViewID = layer_get_id("TestInstances");
layer_destroy(TestViewID);

//var realID = layer_get_id("Instances");
//layer_destroy(realID);

//display_set_gui_size(global.view_width, global.view_height);
//window_set_fullscreen(true);


window_set_cursor(cr_none);
cursor_sprite = MouseBaseTest;

global.curUI = -1;

