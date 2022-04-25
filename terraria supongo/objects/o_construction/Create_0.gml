globalvar the_map;
globalvar	map_w, map_h;
globalvar item, block;
map_w		= room_width/TILE_L
map_h		= room_height/TILE_L

the_map	= ds_grid_create(map_w,map_h)

init_blocks()
sc_iso_construction("Tiles_1")
