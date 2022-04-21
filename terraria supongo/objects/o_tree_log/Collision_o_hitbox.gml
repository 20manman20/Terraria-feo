if other.image_alpha	> .6 {
	damage		= .8
	alarm[1]	= 1
	hp_-=2

	if hp_ <= 0 instance_destroy()
}
