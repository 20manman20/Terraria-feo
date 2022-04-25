if instance_exists(block_place) {
	draw_rectangle(block_place.x+20,block_place.y,block_place.x+16,block_place.y+12,false)
	draw_sprite_ext(block_place.sprite_index,0,block_place.x,block_place.y,1,1,0,c_gray,.5)
}
