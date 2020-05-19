/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
var temp_WeaponSprite = -1;
var temp_WeaponPivotX = 0.0;
var temp_WeaponPivotY = 0.0;
var temp_WeaponScaleX = 1.0;
var temp_WeaponScaleY = 1.0;
with(m_obj_CurWeapon)
{
	temp_WeaponSprite = m_spr_Target;
	temp_WeaponPivotX = m_f_PivotPosX;
	temp_WeaponPivotY = m_f_PivotPosY;
	temp_WeaponScaleX = m_f_PivotSclaeX;
	temp_WeaponScaleY = m_f_PivotSclaeY;
}
var tt = view_surface_id[0];
var tt2 = view_surface_id;
var tt3 = view_get_surface_id(0);


//

surface_set_target(temp_surface);







if(point_in_rectangle(x,y,0,0,view_get_wport(0),view_get_hport(0)))
{
	var temp_WeaponSprite_height = sprite_get_height(temp_WeaponSprite);
	var temp_WeaponSprite_width = sprite_get_width(temp_WeaponSprite);
	draw_sprite_ext(temp_WeaponSprite ,-1,x - (temp_WeaponSprite_width *0.5*temp_WeaponScaleX) +temp_WeaponPivotX,
		y - (temp_WeaponSprite_height *0.5*temp_WeaponScaleY) +temp_WeaponPivotY,temp_WeaponScaleX,temp_WeaponScaleY,0,c_white,1);
}

surface_reset_target();
//surface_set_target(application_surface);
draw_surface(temp_surface,0,0);
//draw_surface_ext (temp_surface, 0, 0, 1, 1, 0, c_white, 1);
//surface_reset_target();
//surface_free(temp_surface);

surface_set_target(temp_surface);
draw_clear_alpha (c_white, 0.0);
surface_reset_target();