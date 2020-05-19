/// @description Insert description here
// You can write your code in this editor

// 저장하기 
ini_open(m_dir_SaveInI);
ini_write_real(m_str_WeaponName,"Damage",m_i_Damage);
ini_write_real(m_str_WeaponName,"PreDelay",m_i_PreDelay);
ini_write_real(m_str_WeaponName,"CoolTime",m_i_CoolTime);
ini_write_real(m_str_WeaponName,"MaxBulletCount",m_i_MaxBulletCount);
ini_write_real(m_str_WeaponName,"CurBulletCount",m_i_CurBulletCount);

var temp_spr_duplicate = sprite_duplicate (m_spr_Target);
sprite_save_strip  (temp_spr_duplicate,"TSR/TEXTURE/"+sprite_get_name(m_spr_Target)+".png");

ini_write_string(m_str_WeaponName,"Target","TSR/TEXTURE/"+sprite_get_name(m_spr_Target)+".png");

ini_write_real(m_str_WeaponName,"PivotPosX",m_f_PivotPosX);
ini_write_real(m_str_WeaponName,"PivotPosY",m_f_PivotPosY);
ini_write_real(m_str_WeaponName,"PivotSclaeX",m_f_PivotSclaeX);
ini_write_real(m_str_WeaponName,"PivotSclaeY",m_f_PivotSclaeY);
ini_write_real(m_str_WeaponName,"WeaponSound",m_WeaponSound);
ini_write_real(m_str_WeaponName,"WeaponSoundVolume",m_f_WeaponSoundVolume);
ini_close();
