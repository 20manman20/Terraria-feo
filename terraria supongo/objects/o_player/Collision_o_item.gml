var _list = ds_list_create()
var _num = instance_place_list(x,y,o_item,_list,false)
if _num > 0	{
	for (var i = 0; i < _num; ++i;)	{
		for (var j = 0; j < length_item; ++j) {
			if item[j,0] == -1 {
				item[j,0]	= _list[| i].image_index
				instance_destroy(_list[| i])
				break
			}
		}
	}
}

ds_list_destroy(_list)
