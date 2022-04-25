function init_blocks(){

enum it {
	stick,
	leaves,
	rock0,
	rock1,
	rock2,
	apple,
	grass,
	dirt,
	crust,
	length
}

enum it_type {
	material,
	tool,
	block
}

for (var i = 0; i < it.length; ++i) {
	item[i,0]	= "Ni idea"
	item[i,1]	= it_type.material
}

item[it.stick]	= ["Palo", it_type.tool]
item[it.grass]	= ["Pasto", it_type.block]
item[it.dirt]	= ["Tierra", it_type.block]
item[it.crust]	= ["Corteza", it_type.block]

block	= [	o_grass,
			o_dirt,
			o_crust]

}
