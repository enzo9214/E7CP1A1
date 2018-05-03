restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

menu_x_precio = restaurant_menu.invert

def promedio_precio(hash_in)
	suma = 0
	hash_in.values.each { |x|
		suma += x }
		suma / hash_in.length
end	

def nombre_platos(hash_in)
  nombre_platos = hash_in.keys
end	

def valores_platos(hash_in)
  valores_platos = hash_in.values
end	

puts "El plato mas caro es " + menu_x_precio[menu_x_precio.keys.sort[-1]]
puts "El plato mas barato es " + menu_x_precio[menu_x_precio.keys.sort[0]]
puts "El promedio de precio de los platos es " + promedio_precio(restaurant_menu).to_s
puts "Nombre de platos " + nombre_platos(restaurant_menu).to_s
puts "Valores de platos " + valores_platos(restaurant_menu).to_s

puts "Con Iva: " + restaurant_menu.each {|key, value| restaurant_menu[key] = value*1.19 }.to_s
puts "Con Descuento (mas de una palabra): " + restaurant_menu.each {|key, value| restaurant_menu[key] = value*0.8 if key.split.size > 1}.to_s




