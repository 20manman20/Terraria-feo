function approach(_init, _value, _amount) {
	if _init < _value
		return min(_amount + _init, _value)
	else
		return max(_init - _amount, _value)
}
