/// @description Insert description here
// You can write your code in this editor
if(m_b_Active) { ++m_i_TopItem; }
if(ds_list_size(m_ItemArray) - m_i_MaxShowItem < m_i_TopItem)
{
	m_i_TopItem = ds_list_size(m_ItemArray) - m_i_MaxShowItem;
}