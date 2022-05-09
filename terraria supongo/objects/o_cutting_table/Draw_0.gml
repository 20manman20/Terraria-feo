draw_circle(x,y,cut_table_r,true)


for (var i = -0; i <= 2; ++i) {
    draw_line_width(x+(i-1)*cut_table_r/2,y-cut_table_r,x+(i-1)*cut_table_r/2,y+cut_table_r,1+cut_x[i]*2)
}

for (var j = 0; j <= 2; ++j) {
	draw_line_width(x-cut_table_r,y+(j-1)*cut_table_r/2,x+cut_table_r,y+(j-1)*cut_table_r/2,1+cut_y[j]*2)
}



var _val	= area_mouse_hoptions(x-50-cut_w/2,y-100,50,cut_w,200,3)
draw_text(mouse_x,mouse_y,_val)

var _valv	= area_mouse_voptions(x-100,y-50-cut_w/2,200,50,cut_w,3)
draw_text(mouse_x,mouse_y+10,_valv)

/*
for (var _h = 0; _h < 4; ++_h) {
	for (var _v = 0; _v < 4; ++_v) {
		var _dis	= point_distance(x-75+_h*50,y-75+_v*50,x,y)
		draw_text(x-75+_h*50,y-75+_v*50,round(3-_dis/35))
	}
}
