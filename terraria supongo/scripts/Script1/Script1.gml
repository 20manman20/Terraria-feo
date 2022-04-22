function approach(_init, _value, _amount) {
	if _init < _value
		return min(_amount + _init, _value)
	else
		return max(_init - _amount, _value)
}

#macro MAP_W	(room_width/4)
#macro MAP_H	(room_height/4)

enum TILE {
	SPRITE	= 0,
	Z		= 1
}


function sc_iso_construction(argument0) {
	layer_set_visible(argument0,false)

	var tile_map	= layer_tilemap_get_id(argument0)

	for (var tx = 0; tx < MAP_W; ++tx) {
	    for (var ty = 0; ty < MAP_H; ++ty) {
			var tile_map_data		= tilemap_get(tile_map,tx,ty)
			the_map[# tx, ty]		= tile_map_data
		
		}
	}

	var tile_data, screen_x, screen_y, tile_index, tile_z

	for (var tx	= 0; tx < MAP_W; tx++) {
		for (var ty	= 0; ty < MAP_H; ty++) {
			tile_data	= the_map[# tx, ty]
		
			if tile_data < 9 && tile_data > 0 {
				var tile_o	= instance_create_depth(tx*16,ty*16,100,o_solid)
			}
		}
	}
}
