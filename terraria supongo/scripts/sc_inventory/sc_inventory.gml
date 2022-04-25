function item_check() {
	for (var i=0;i<o_player.inv_length;i++){
		if o_player.inv_item[i,0] == image_index {
			return i
			break
		}
	}
	return -1

}


