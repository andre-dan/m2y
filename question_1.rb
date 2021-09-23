def divisor(num_x, num_y, num_w) 
	(num_x..num_y).select {|n| n % num_w == 0 }  rescue ZeroDivisionError
end