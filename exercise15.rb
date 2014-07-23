arr = ['snow', 'winter', 'ice', 'slipper', 'salted roads', 'white trees']

arr.delete_if {|str| str.start_with?("s")}

arr.delete_if {|str| str.start_with?("s","w")}