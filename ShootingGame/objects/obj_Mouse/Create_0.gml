/// @description Insert description here
// You can write your code in this editor


m_map_Weapons = ds_map_create();
m_list_WeaponName = ds_list_create();
ini_open("MAIN/Weapon.ini");



var temp_i_WeaponCount = ini_read_real("Root","ItemCount",0)

for (var i = 0; i < temp_i_WeaponCount ; ++i) 
{
	var temp_load_WeaponName = ini_read_string("Root","item"+string(i),"");
	if("" != temp_load_WeaponName)
	{
		ds_list_add(m_list_WeaponName,temp_load_WeaponName);
	}
}

for (var i = 0; i < ds_list_size(m_list_WeaponName); ++i) 
{
	var temp_instanceWeapon = instance_create_depth(x,y,depth,obj_Weapon);
	var temp_WeaponName = m_list_WeaponName[| i];
	with(temp_instanceWeapon)
	{
		m_str_WeaponName = temp_WeaponName;
	}
	ds_map_add(m_map_Weapons ,m_list_WeaponName[| i],temp_instanceWeapon);
}

event_user(10);
ini_close();

if(instance_exists(m_map_Weapons[? ds_map_find_first(m_map_Weapons)]))
{
	m_obj_CurWeapon = m_map_Weapons[? ds_map_find_first(m_map_Weapons)];
}


temp_surface = surface_create(1024, 1768);
