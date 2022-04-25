
var _list	= ds_list_create()
var _place	= instance_place_list(x,y,o_def_block,_list,false) 

if _place > 0	{
	for (var e = 0; e < _place; ++e;)	{
		if ds_list_find_index(damage_list,_list[| e]) == -1 {
			with _list[| e] {
				if !collision_line(o_player.x,o_player.y-16,_list[| e].x,_list[| e].y, o_def_block,false,true) {
					hp_--
					if hp_ <= 0 instance_destroy()
					else {
						var _fx	= instance_create_depth(x,y,depth-1,o_damage_effect)
						_fx.sprite_index	= sprite_index
					}
				}
			}
			ds_list_add(damage_list,_list[| e])
		}
	}
}

ds_list_destroy(_list)
ds_list_destroy(damage_list)
