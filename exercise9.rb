h = {a:1, b:2, c:3, d:4}

h[:b] # Get value of ':b'

h[:e] = 5 # Add '{e:5' to hash

h.delete_if do |k, v|
	v < 3.5
end