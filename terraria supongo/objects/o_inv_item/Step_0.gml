bol_floor	= place_meeting(x,y+1,o_def_block) || place_meeting(x,y+1,o_inv_item)

if !bol_floor {
	spd[v]	= approach(spd[v],spd_max[v],spd_acc[v])
}

repeat (abs(spd[v]*COL_TIME)) {
	if place_meeting(x,y+sign(spd[v]),o_def_block) {
		spd[v]	= 0
		break
	} else if place_meeting(x,y+sign(spd[v]),o_inv_item) {
		spd[v]	= 0
		break
	} else y += sign(spd[v])/COL_TIME
}

