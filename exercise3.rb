array = [1, 2. 3, 4, 5, 6, 7, 8, 9, 10]

odd_array = array.select {|n| n.odd? ? true : false }

p odd_array