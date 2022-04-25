// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function state_idle(){
	hinput		= key_right - key_left

	spd[h]	= approach(spd[h], hinput*spd_max[h], spd_acc[h])

	bol_floor	= place_meeting(x,y+1,o_def_block)

	if !bol_floor {
		spd[v]	= approach(spd[v],spd_max[v],spd_acc[v])
	}

	if !bol_floor {
		if coyote > 0 {
			coyote--
			if !jumped && key_jump {
				spd[v]	= -spd_jump
				jumped	= true
			}
		}
	} else {
		jumped	= false
		coyote	= coyote_max
	}


	if key_jump buffer = buffer_max


	if buffer > 0 {
		buffer--
		if bol_floor {
			spd[v]	= -spd_jump
			buffer = 0
			jumped	= true
		}
	}

	if key_jump_r && spd[v] < 0 {
		spd[v]	*= .3
	}
	
	
	if hinput != 0 && place_meeting(x+hinput*4,y,o_def_block) && !place_meeting(x+hinput*4,y-16,o_def_block) && !place_meeting(x,y-16,o_def_block) && bol_floor {
		spd[v] = -3.5
	}
	

	repeat(abs(spd[h]*COL_TIME)) {
		if place_meeting(x+sign(spd[h]),y,o_def_block) {
			spd[h]	= 0
			break
		} else x += sign(spd[h])/COL_TIME
	}

	repeat (abs(spd[v]*COL_TIME)) {
		if place_meeting(x,y+sign(spd[v]),o_def_block) {
			spd[v]	= 0
			//y	= round(y)
			break
		} else y += sign(spd[v])/COL_TIME
	}

}