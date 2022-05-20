
var _list	= ds_list_create()
var _place	= collision_rectangle_list(x-8,y-8,x+16+8,y+16+8,o_def_solid,false,true,_list,false) 

if _place > 0	{
	for (var e = 0; e < _place; ++e;)	{
		with _list[| e] {
			alarm[0]	= 1
		}
	}
}

ds_list_destroy(_list)

/*
if item_drop != -1 {
	for (var i = 0; i < array_length(item_drop); ++i) {
		if item_range[i,0] - item_range[i,1]	!= 0 {
			#region	Sistema de probabilidades
			var _random	= random_range(100/power(item_range[i,1]+2,item_prob[i]),100)
			show_debug_message("Random:" + string(_random))
			show_debug_message("Range:" + string(100/power(item_range[i,1]+2,item_prob[i])))
			for (var j = 0; j <= (item_range[i,1]+1); ++j) {
				var _ind	= j-item_range[i,0]+1
				var _prob	= 100
				if sign(_ind) != -1 _prob	= clamp(100/power(_ind,item_prob[i]),0,100)
				if !(_prob >= _random) || (j == (item_range[i,1]+1)) {
					if j != 1  {
						var _item			= instance_create_depth(x+8,y+8,depth-1,o_inv_item) 
						_item.image_index	= item_drop[i]
						_item.amount		= j-1
						show_debug_message(j-1)
					}
					break
				}
				
			}
			#endregion
		} else {
			var _item			= instance_create_depth(x+8,y+8,depth-1,o_inv_item) 
			_item.image_index	= item_drop[i]
			_item.amount		= item_range[i,0]
		}
	}
}







