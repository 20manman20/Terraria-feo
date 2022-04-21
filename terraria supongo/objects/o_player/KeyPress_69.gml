switch (state) {
    case st.idle:
			if instance_place(x+48*hdir,y,o_tree_stump) {
				var _stump	= instance_place(x+48*hdir,y,o_tree_stump)
				state		= st.stump
				stump_id	= _stump
			}
        break
    default:
			state	= st.idle
        break
}
