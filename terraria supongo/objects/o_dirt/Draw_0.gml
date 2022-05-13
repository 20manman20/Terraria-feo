//66draw_sprite(s_dirt,0,x,y)
draw_self()
if point_distance(x+8,y+8,mouse_x,mouse_y) < 8 {
	draw_text_transformed(x+4,y+4,col,.5,.5,0)
}

