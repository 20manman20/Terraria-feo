/*var _list = ds_list_create()
var _num = instance_place_list(x,y,o_inv_item,_list,false)
if _num > 0	{
	for (var i = 0; i < _num; ++i;)	{
		for (var j = 0; j < inv_length; ++j) {
			if inv_item[j,0] == -1 {
				inv_item[j,0]	= _list[| i].image_index
				inv_item[j,1]++
				instance_destroy(_list[| i])
				break
			}	else {
				inv_item[j,1]++
				instance_destroy(_list[| i])
				break
			}
		} 
	}
}

ds_list_destroy(_list)
