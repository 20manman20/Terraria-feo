for (var i = 0; i < length_item; ++i) {
	var _ind	= 0
	if i	== item_i _ind	= 1
	draw_sprite(s_item_mark,_ind,4+16+(i%8)*32,16+(i div 8)*32)
	if item[i] != -1 {
		draw_sprite(s_item,i,4+16+(i%8)*32,16+(i div 8)*32)
	}
}

switch (state) {
    case st.stump:
		draw_set_color(c_white)
		draw_set_alpha(.2)
		draw_circle(1000,360,220,false)
		draw_set_alpha(1/3)
		draw_circle(1000,360,200,false)
		draw_set_alpha(.8)
		
		for (var i = 0; i < 8; ++i) {
			var _x	= lengthdir_x(128,22.5+45*i)
			var _y	= lengthdir_y(128,22.5+45*i)
			draw_circle(1000+_x,360+_y,32,false)
			draw_set_color(c_red)
			if stump_id.place[i] != -1 draw_sprite(s_item,stump_id.place[i],1000+_x,360+_y)
			draw_set_color(c_white)
		}
		draw_set_alpha(1)
		for (var i = 0; i < 4; ++i) {
			var _x	= lengthdir_x(54,45+90*i)
			var _y	= lengthdir_y(54,45+90*i)
			draw_circle(1000+_x,360+_y,32,false)
			draw_set_color(c_red)
			if stump_id.place[i+8] != -1 draw_sprite(s_item,stump_id.place[i+8],1000+_x,360+_y)
			draw_set_color(c_white)
		}
        break
}

