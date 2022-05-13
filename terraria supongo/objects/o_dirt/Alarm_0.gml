var _length	= power(2,.5)*16
var _place	= [0,0,0,0]

sprite_index	= s_tile

col	= 0

for (var i = 0; i < 4; ++i) {
	_place[i]	= place_meeting(((x+8+lengthdir_x(_length,i*90)) div 16) * 16,((y+8+lengthdir_y(_length,i*90)) div 16) * 16,o_dirt)
	col += power(2,i)*_place[i]
}

for (var j = 0; j < 4; ++j) {
	var _bol	= place_meeting(((x+8+lengthdir_x(_length,45+j*90)) div 16) * 16,((y+8+lengthdir_y(_length,45+j*90)) div 16) * 16,o_dirt)
	if _place[j] && _place[(j+1)%4] {
		col += power(2*_bol,j+4)
 	}
}

switch col {
	case 19: col = 16
	break

	case 23: col = 17
	break

	case 27: col=18
	break

	case 31: col=19
	break

	case 38: col=20
	break

	case 39: col=21
	break

	case 46: col=22
	break

	case 47: col=23
	break

	case 55: col=24
	break

	case 63: col=25
	break

	case 76: col=26
	break

	case 77: col=27
	break

	case 78: col=28
	break

	case 79: col=29
	break

	case 95: col=30
	break

	case 110: col=31
	break

	case 111: col=32
	break

	case 127: col=33
	break

	case 137: col=34
	break

	case 139: col=35
	break

	case 141: col=36
	break

	case 143: col=37
	break

	case 155: col=38
	break

	case 159: col=39
	break

	case 175: col=40
	break

	case 191: col=41
	break

	case 205: col = 42 
	break

	case 207: col = 43
	break

	case 223: col = 44
	break
	
	case 239: col = 45
	break
	
	case 255: col = 46
	break
}

image_index	= col

depth	= y/2
