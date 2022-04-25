if item_drop != -1 {
	var _inv_item			= instance_create_depth(x+8,y+8,depth-1,o_inv_item)
	_inv_item.image_index	= item_drop
	_inv_item.spd[v]		= -3
}
