function area_mouse_voptions(_area_left, _area_top, _area_opts_w, _area_opts_h, _area_opts_off, _area_opts_n) {
	var i	= -1
	if (mouse_x > _area_left) && (mouse_x < _area_left+_area_opts_w) && (mouse_y > _area_top) && (mouse_y < (_area_top + _area_opts_h*_area_opts_n)) {
		var _prei	= (mouse_y-_area_top) div _area_opts_h;
		if mouse_y <= (_area_top+_prei*_area_opts_h+_area_opts_off) i = _prei
	}
	return i
}

function area_mouse_hoptions(_area_left, _area_top, _area_opts_w, _area_opts_off, _area_opts_h, _area_opts_n) {
	var i	= -1
	if (mouse_x > _area_left) && (mouse_x < _area_left+_area_opts_w*_area_opts_n) && (mouse_y > _area_top-6) && (mouse_y < (_area_top + _area_opts_h)) {
		var _prei	= (mouse_x-_area_left) div _area_opts_w;
		if mouse_x <= (_area_left+_prei*_area_opts_w+_area_opts_off) i = _prei
	}
	return i
}
