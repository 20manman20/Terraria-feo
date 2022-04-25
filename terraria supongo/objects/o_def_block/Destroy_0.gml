if item_drop != -1 {
	for (var i = 0; i < array_length(item_drop); ++i) {
		if item_range[i,0] - item_range[i,1]	!= 0 {
			#region	Sistema de probabilidades
			var _random	= random_range(5,100)
			show_debug_message("Random:" + string(_random))
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





