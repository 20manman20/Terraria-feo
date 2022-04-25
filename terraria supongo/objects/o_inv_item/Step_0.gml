bol_floor	= place_meeting(x,y+1,o_def_solid)

if !bol_floor {
	spd[v]	= approach(spd[v],spd_max[v],spd_acc[v])
}

repeat (abs(spd[v]*COL_TIME)) {
	if place_meeting(x,y+sign(spd[v]),o_def_solid) {
		spd[v]	= 0
		break
	} else y += sign(spd[v])/COL_TIME
}

