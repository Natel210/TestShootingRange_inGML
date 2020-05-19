/// @description Insert description here
// You can write your code in this editor
if(global.g_objActiveId != -1){ return; }

var temp_str_WeaponName = "";
var temp_i_Damage = 0;
var temp_i_PreDelay = 0;
var temp_i_CoolTime = 0;
var temp_i_MaxBulletCount = 0;
var temp_i_CurBulletCount = 0;
var temp_spr_Target = -1;
var temp_f_PivotPosX = 0;
var temp_f_PivotPosY = 0;
var temp_f_PivotSclaeX = 1.0;
var temp_f_PivotSclaeY = 1.0;
var temp_WeaponSound = -1;
var temp_f_WeaponSoundVolume = 0;
with(global.g_mouse)
{
	with(m_obj_CurWeapon)
	{
		temp_str_WeaponName = m_str_WeaponName;
		temp_i_Damage = m_i_Damage;
		temp_i_PreDelay = m_i_PreDelay;
		temp_i_CoolTime = m_i_CoolTime;
		temp_i_MaxBulletCount = m_i_MaxBulletCount;
		temp_i_CurBulletCount = m_i_CurBulletCount;
		temp_spr_Target = m_spr_Target;
		temp_f_PivotPosX = m_f_PivotPosX;
		temp_f_PivotPosY = m_f_PivotPosY;
		temp_f_PivotSclaeX = m_f_PivotSclaeX;
		temp_f_PivotSclaeY = m_f_PivotSclaeY;
		temp_WeaponSound = m_WeaponSound;
		temp_f_WeaponSoundVolume =m_f_WeaponSoundVolume;
	}
}

with(m_map_ChildUI[? "CurrentWeapon_StaticBox"])
{
	m_str_Text = temp_str_WeaponName;
}

with(m_map_ChildUI[? "CurrentBulletCount_StaticBox"])
{
	m_str_Text = string(temp_i_CurBulletCount);
}

with(m_map_ChildUI[? "Damage_TextBox"])
{
	m_str_Text = string(temp_i_Damage);
}

with(m_map_ChildUI[? "Predelay_TextBox"])
{
	m_str_Text = string(temp_i_PreDelay);
}

with(m_map_ChildUI[? "Colltime_TextBox"])
{
	m_str_Text = string(temp_i_CoolTime);
}

with(m_map_ChildUI[? "BulletCount_TextBox"])
{
	m_str_Text = string(temp_i_MaxBulletCount);
}

with(m_map_ChildUI[? "CurrentBulletCount_StaticBox"])
{
	m_str_Text = string(temp_i_CurBulletCount);
}

with(m_map_ChildUI[? "PosX_TextBox"])
{
	m_str_Text = string(temp_f_PivotPosX);
}
with(m_map_ChildUI[? "PosY_TextBox"])
{
	m_str_Text = string(temp_f_PivotPosY);
}
with(m_map_ChildUI[? "ScaleX_TextBox"])
{
	m_str_Text = string(temp_f_PivotSclaeX);
}
with(m_map_ChildUI[? "ScaleY_TextBox"])
{
	m_str_Text = string(temp_f_PivotSclaeY);
}
with(m_map_ChildUI[? "WS_CurrentVolue_TextBox"])
{
	m_str_Text = string(temp_f_WeaponSoundVolume);
}
//temp_spr_Target = m_spr_Target;
//temp_WeaponSound = m_WeaponSound;