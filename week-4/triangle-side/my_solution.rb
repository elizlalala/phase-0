def valid_triangle?(x,y,z)
	#expected result is a boolean value of true or false
	if ((x == 0) || (y == 0) || (z == 0))
			p false
		elsif (((x + y) < z) || ((y + z) < x) || ((z + x) < y))
			p false
		else
			p true
	end
end

