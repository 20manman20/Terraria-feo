draw_circle(x,y,100,true)

for (var i = -0; i <= 2; ++i) {
    draw_line_width(x+(i-1)*50,y-100,x+(i-1)*50,y+100,1+cut_x[i]*2)
}

for (var j = 0; j <= 2; ++j) {
	draw_line_width(x-100,y+(j-1)*50,x+100,y+(j-1)*50,1+cut_y[j]*2)
}



var _val	= area_mouse_hoptions(x-50-cut_w/2,y-100,50,cut_w,200,3)
draw_text(mouse_x,mouse_y,_val)

var _valv	= area_mouse_voptions(x-100,y-50-cut_w/2,200,50,cut_w,3)
draw_text(mouse_x,mouse_y+10,_valv)
