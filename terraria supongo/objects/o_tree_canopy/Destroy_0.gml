var _list = ds_list_create()
var _num = collision_rectangle_list(x-33,y-33,x+33,y,o_tree_canopy,false,true,_list,false)
if _num > 0	{
	for (var i = 0; i < _num; ++i;)	{
		with _list[| i] {
			alarm[0]	= 3
		}
	}
}

ds_list_destroy(_list)
