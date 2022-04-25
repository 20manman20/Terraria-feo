function approach(_init, _value, _amount) {
	if _init < _value
		return min(_amount + _init, _value)
	else
		return max(_init - _amount, _value)
}

#macro TILE_L	16

function sc_iso_construction(argument0) {
	layer_set_visible(argument0,false)

	var tile_map	= layer_tilemap_get_id(argument0)

	for (var tx = 0; tx < map_w; ++tx) {
	    for (var ty = 0; ty < map_h; ++ty) {
			var tile_map_data		= tilemap_get(tile_map,tx,ty)
			the_map[# tx, ty]		= tile_map_data
		
		}
	}

	var tile_data, screen_x, screen_y, tile_index, tile_z

	for (var tx	= 0; tx < map_w; tx++) {
		for (var ty	= 0; ty < map_h; ty++) {
			tile_data	= the_map[# tx, ty]
		
			if tile_data < 9 && tile_data > 0 {
				var tile_o	= instance_create_depth(tx*TILE_L,ty*TILE_L,100,block[tile_data-1])
			}
		}
	}
}
