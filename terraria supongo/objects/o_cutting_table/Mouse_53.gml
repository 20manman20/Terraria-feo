var _valh	= area_mouse_hoptions(x-50-cut_w/2,y-100,50,cut_w,200,3)
if _valh != -1 {
	if !cut_x[_valh] {
		cut_x[_valh]	= true
		var _cut	= instance_create_depth(x-50+50*_valh-cut_w/2,y-100,depth,o_cuts)
		_cut.image_xscale	= cut_w
		_cut.image_yscale	= cut_table_r*2
	} else {
		cut_x[_valh]	= false
		var _cut	= instance_place(x-50+50*_valh,y-cut_table_r,o_cuts)
		instance_destroy(_cut)
	}
}

var _valv	= area_mouse_voptions(x-100,y-50-cut_w/2,200,50,cut_w,3)
if _valv != -1 {
	if !cut_y[_valv] {
		cut_y[_valv]	= true
		var _cut	= instance_create_depth(x-100,y-50+50*_valv-cut_w/2,depth,o_cuts)
		_cut.image_xscale	= cut_table_r*2
		_cut.image_yscale	= cut_w
	} else {
		cut_y[_valv]	= false
		var _cut	= instance_place(x-cut_table_r,y-50+50*_valv,o_cuts)
		instance_destroy(_cut)
	}
}

