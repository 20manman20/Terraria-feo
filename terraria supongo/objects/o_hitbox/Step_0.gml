image_alpha	= lerp(image_alpha,0,.3)


	var _dir	= point_direction(o_player.x,o_player.y-16,mouse_x,mouse_y)
	x	=	o_player.x+lengthdir_x(24,_dir)+8*o_player.hdir
	y	=	o_player.y-16+lengthdir_y(28,_dir)
