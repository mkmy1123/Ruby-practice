

UNITS = { m: 1.0, ft: 3.28, in: 39.97}

def convert_length(length, form: :m, to: :m) 
	(length / units[form] * units[to]).round(2)
end