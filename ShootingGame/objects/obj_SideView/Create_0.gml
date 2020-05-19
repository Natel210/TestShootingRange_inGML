/// @description Insert description here
// You can write your code in this editor


//해당 뷰와 연동을 위한 오브잭트 
m_b_IsCheckActiveChange = true;
m_currentWport = view_wport[m_id_currentViewPort];
m_currentHport = view_hport[m_id_currentViewPort];
m_map_ChildUI = ds_map_create();

var temp_instance = -1;
var temp_UI_ID = -1;
var myid = id;
var CheckSection = m_str_InISection;

//코드 리스트를 만든다.
ini_open(working_directory + "UI.ini");
var temp_SideViewUICount = ini_read_real(CheckSection,"Count",0);
var temp_SideViewUIDir = ini_read_string(CheckSection,"Details_Directory","");
if("" == temp_SideViewUIDir ){ return; }
var temp_UIlist = ds_list_create();

for (var i = 0; i < temp_SideViewUICount; ++i) 
{
	if(!ini_key_exists(CheckSection,"Item"+string(i))){continue;}
	var temp_item = ini_read_string(CheckSection,"Item"+string(i),"");
	if("" != temp_item ){ds_list_add(temp_UIlist,temp_item);}
}
ini_close();

ini_open(working_directory + temp_SideViewUIDir);
for (var i = 0; i < ds_list_size(temp_UIlist); ++i) 
{
#region 기본 공통 항목
	var temptpye = ini_read_string(temp_UIlist[| i],"Type","");
	var tempposx = ini_read_real(temp_UIlist[| i],"PosX",0);
	var tempposy = ini_read_real(temp_UIlist[| i],"PosY",0);
	var tempdepth = ini_read_real(temp_UIlist[| i],"Depth",0);
	var tempscalex = ini_read_real(temp_UIlist[| i],"ScaleX",0);
	if(tempscalex == 0){ continue; }
	var tempscaley = ini_read_real(temp_UIlist[| i],"ScaleY",0);
	if(tempscaley == 0){ continue; }
	temp_instance = script_execute(scr_CreateUI,temptpye, tempposx, tempposy, tempdepth, tempscalex, tempscaley);
	if(-1 == temp_instance){ continue; }
	if(ini_key_exists(temp_UIlist[| i],"spr_Idle"))
	{
		var temp_spr_Idle = asset_get_index(ini_read_string(temp_UIlist[| i],"spr_Idle",""));
		if(instance_exists(temp_instance) && -1 != temp_spr_Idle)
		{ with (temp_instance) { m_spr_Idle = temp_spr_Idle;} }
	}
	if(ini_key_exists(temp_UIlist[| i],"b_OutLine"))
	{
		var temp_b_OutLine = ini_read_string(temp_UIlist[| i],"b_OutLine","");
		if("true" == temp_b_OutLine)		{with (temp_instance) { m_b_OutLine = true;}}
		else if("false" == temp_b_OutLine)		{with (temp_instance) { m_b_OutLine = false;}}
	}
#endregion
	
#region 글이 있는 항목 
	if(ini_key_exists(temp_UIlist[| i],"str_Text"))
	{
		var temp_str_Text = ini_read_string(temp_UIlist[| i],"str_Text","");
		if(instance_exists(temp_instance) && -1 != temp_str_Text)
		{ with (temp_instance) { m_str_Text = temp_str_Text;} }
	}
#endregion
	
#region 누르기 버튼이 있는 항목 
	if(ini_key_exists(temp_UIlist[| i],"spr_Push"))
	{
		var temp_spr_Push = asset_get_index(ini_read_string(temp_UIlist[| i],"spr_Push",""));
		if(instance_exists(temp_instance) && -1 != temp_spr_Push)
		{ with (temp_instance) { m_spr_Push = temp_spr_Push;} }
	}
#endregion
	
#region TextBox에서 만 사용
	if(ini_key_exists(temp_UIlist[| i],"b_OnlyNum"))
	{
		var temp_b_OnlyNum = ini_read_string(temp_UIlist[| i],"b_OnlyNum","");
		if("true" == temp_b_OnlyNum)		{with (temp_instance) { m_b_OnlyNum = true;}}
		else if("false" == temp_b_OnlyNum)		{with (temp_instance) { m_b_OnlyNum = false;}}
	}
#endregion
	
#region 활성 비활성이 존재
	if(ini_key_exists(temp_UIlist[| i],"spr_Active"))
	{
		var temp_spr_Active = asset_get_index(ini_read_string(temp_UIlist[| i],"spr_Active",""));
		if(instance_exists(temp_instance) && -1 != temp_spr_Active)
		{ with (temp_instance) { m_spr_Active = temp_spr_Active;} }
	}
	
	if(ini_key_exists(temp_UIlist[| i],"scr_activation"))
	{
		var temp_scr_activation = asset_get_index(ini_read_string(temp_UIlist[| i],"scr_activation",""));
		if(instance_exists(temp_instance) && -1 != temp_scr_activation )
		{ with (temp_instance) { m_scr_activation = temp_scr_activation;} }
	}
	
	
	if(ini_key_exists(temp_UIlist[| i],"strActiveText"))
	{
		var temp_strActiveText = ini_read_string(temp_UIlist[| i],"strActiveText","");
		if(instance_exists(temp_instance) && -1 != temp_strActiveText)
		{ with (temp_instance) { m_strActiveText = temp_strActiveText;} }
	}
	
	if(ini_key_exists(temp_UIlist[| i],"strUnActiveText"))
	{
		var temp_strUnActiveText = ini_read_string(temp_UIlist[| i],"strUnActiveText","");
		if(instance_exists(temp_instance) && -1 != temp_strUnActiveText)
		{ with (temp_instance) { m_strUnActiveText = temp_strUnActiveText;} }
	}	
#endregion

#region Shift 전용
	if("Shift" == temptpye)
	{
		with (temp_instance) { m_id_SideView = myid;}
	}
#endregion
	
	ds_map_add(m_map_ChildUI, temp_UIlist[| i], temp_instance);
}
ini_close();
ds_list_destroy(temp_UIlist);

//ini_open("TSR_LeftSideViewUI.ini");
//program_directory//게임 실행 파일이 저장된 디렉토리를 반환합니다. 
//working_directory
