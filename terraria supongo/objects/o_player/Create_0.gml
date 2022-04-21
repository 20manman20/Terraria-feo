//Inicio macros
#macro	h			0
#macro	v			1
#macro	COL_TIME	2

enum st {
	idle, stump
}


//Velocidad en x y
spd			= [0,0]

//Velocidad máxima al correr
//Velocidad máxima al caer
spd_max		= [4,9]

//Aceleración
//Gravedad
spd_acc		= [1,.5]


key_left	= keyboard_check(ord("A"))
key_right	= keyboard_check(ord("D"))
key_jump	= keyboard_check_pressed(ord("W"))
key_jump_r	= keyboard_check_released(ord("W"))

#region Variables de Salto
buffer_max		= 5
buffer			= 0

coyote_max		= 5
coyote			= 0

jumped			= false

#endregion

hdir	= 1

length_item	= 16
for (var i = 0; i < 32; ++i) {
	item[i]	= -1
}
item_i	= 0

state	= st.idle

#region	Variables del tocón
stump_id	= noone
#endregion
