if bol_detect {
	for (var i = 0; i < 4; ++i) {
		var _touchh	= place_meeting(x+4*image_xscale,y,o_cuts)
		if _touchh || image_xscale > 3 {
			bol_detect = false
			if image_xscale <= 3 { 
				if !place_meeting(x+50*image_xscale,y,o_detect_cut_table) var _det			= instance_create_depth(x+50*image_xscale,y,depth,o_detect_cut_table)
			}
			break
		}
		if bbox_right < room_width/2+50 image_xscale++
	}
	
	for (var j = 0; j < 4; ++j) {
		var _touchv	= place_meeting(x,y+4*image_yscale,o_cuts)
		if _touchv || image_yscale > 3 {
			bol_detect = false
			if image_yscale <= 3 { 
				if !place_meeting(x,y+50*image_xscale,o_detect_cut_table) var _det			= instance_create_depth(x,y+50*image_yscale,depth,o_detect_cut_table)
			}
			break
		}
		if bbox_bottom < room_height/2+50 image_yscale++
	}
} 

if !bol_cut_pattern {
	
	for (var _h = 0; _h < image_xscale; ++_h) {
		for (var _v = 0; _v < image_yscale; ++_v) {
			var _point			= [x+25+_h*50,y+25+_v*50]
			var _dis			= round(3-point_distance(_point[h],_point[v],cut_table_x,cut_table_y)/35)
			cut_pattern[_dis]++
			if _h == image_xscale - 1 && _v == image_yscale - 1 {
				var _piece	= instance_create_depth(x,y,depth-1,o_piece)
				_piece.image_index	= rock_pattern[cut_pattern[0]][cut_pattern[1]][cut_pattern[2]]
				show_debug_message(3)
				bol_cut_pattern	= true
				instance_destroy()
			}
		}
	}
}
	
