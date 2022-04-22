globalvar the_map;
globalvar	map_w, map_h;
map_w		= room_width/TILE_L
map_h		= room_height/TILE_L

the_map	= ds_grid_create(map_w,map_h)

sc_iso_construction("Tiles_1")
