/// @description Insert description here
// You can write your code in this editor

// 로딩하기

if(file_exists(m_dir_SaveInI))
{
	ini_open(m_dir_SaveInI);
	m_i_Damage = ini_read_real(m_str_WeaponName,"Damage", 0);
	m_i_PreDelay = ini_read_real(m_str_WeaponName,"PreDelay", 0);
	m_i_CoolTime = ini_read_real(m_str_WeaponName,"CoolTime", 0);
	m_i_MaxBulletCount = ini_read_real(m_str_WeaponName,"MaxBulletCount", 0);
	m_i_CurBulletCount = ini_read_real(m_str_WeaponName,"CurBulletCount", 0);
	
	var temp_sprite = ini_read_string(m_str_WeaponName,"Target","");
	if( temp_sprite != "" )
	{
		m_spr_Target = script_execute(scr_SpriteAdd, temp_sprite);
	}

	m_f_PivotPosX = ini_read_real(m_str_WeaponName,"PivotPosX",0.0);
	m_f_PivotPosY = ini_read_real(m_str_WeaponName,"PivotPosY",0.0);
	m_f_PivotSclaeX = ini_read_real(m_str_WeaponName,"PivotSclaeX",1.0);
	m_f_PivotSclaeY = ini_read_real(m_str_WeaponName,"PivotSclaeY",1.0);
	m_WeaponSound = ini_read_real(m_str_WeaponName,"WeaponSound",m_WeaponSound);
	
	
	
	m_f_WeaponSoundVolume = ini_read_real(m_str_WeaponName,"WeaponSoundVolume",1.0);
	ini_close();
}