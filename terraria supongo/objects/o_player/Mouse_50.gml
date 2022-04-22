if bol_attack {
	var _dir	= point_direction(x,y-16,mouse_x,mouse_y)
	instance_create_depth(x+lengthdir_x(24,_dir)+8*hdir,y-16+lengthdir_y(24,_dir),depth-1,o_hitbox)
	bol_attack	= false
	alarm[0]	= 10
}
