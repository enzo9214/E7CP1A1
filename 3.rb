h = {x: 1, 	y:2}

h["z"] = 3

h[:x] = 5

h.delete(:x)

puts 'yeah' if h.include?('z')

puts h

puts h.invert

