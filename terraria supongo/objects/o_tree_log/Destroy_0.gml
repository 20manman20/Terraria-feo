var _list_log = ds_list_create()
var _num_log = collision_rectangle_list(x-33,y-33,x+33,y,o_tree_log,false,true,_list_log,false)
if _num_log > 0	{
	for (var i = 0; i < _num_log; ++i;)	{
		with _list_log[| i] {
			alarm[0]	= 3
		}
	}
}

var _list_canopy = ds_list_create()
var _num_canopy = collision_rectangle_list(x-33,y-33,x+33,y,o_tree_canopy,false,true,_list_canopy,false)
if _num_canopy > 0	{
	for (var e = 0; e < _num_canopy; ++e;)	{
		with _list_canopy[| e] {
			alarm[0]	= 3
		}
	}
}

ds_list_destroy(_list_log)
ds_list_destroy(_list_canopy)

var _inv_item		= instance_create_depth(x,y,depth,o_inv_item)
_inv_item.spd[v]	= -3
