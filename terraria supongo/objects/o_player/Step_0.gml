//Las variables locales siempre llevarán "_" antes del nombre
//Variables de tecla
key_left	= keyboard_check(ord("A"))
key_right	= keyboard_check(ord("D"))
key_jump	= keyboard_check_pressed(ord("W"))
key_jump_r	= keyboard_check_released(ord("W"))


switch (state) {
    case st.idle:
		state_idle()
		
        break
    default:
	
        break
}

if hinput != 0 hdir	= hinput
image_xscale	= hdir

item_i	= (item_i + mouse_wheel_down()-mouse_wheel_up()+length_item) % length_item


