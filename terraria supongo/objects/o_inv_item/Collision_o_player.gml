instance_destroy()

var _item_i	= -1

for (var i = 0; i < o_player.inv_length; ++i) {
	if o_player.inv_item[i,0]	== image_index {
		_item_i	= i
		break
	}
}

if _item_i == -1 {
	for (var i = 0; i < o_player.inv_length; ++i) {
		if o_player.inv_item[i,0]	== -1 {
			o_player.inv_item[i,0]	= image_index
			o_player.inv_item[i,1]	= amount
			break
		}
	}
} else o_player.inv_item[_item_i,1]+=amount
