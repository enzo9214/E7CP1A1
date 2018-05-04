inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10,
"Impresoras": 6}


def agregar_item(hash, item, valor)
  if !hash.include?(item)
  	hash.store(item, valor)
  end
  hash
end	

def eliminar_item(hash, item)
  if hash.include?(item)
  	hash.delete(item)
  end
end

def actualizar_item(hash, item, valor)
  if hash.include?(item)
  	hash.store(item, valor)
  end
end	

def suma_stock(hash)
  suma = 0
  hash.each {|k, v| suma = suma + v}
  suma
end	

def mayor(hash)
	return hash.max_by{|v| v}
end	

def existe(hash, item)
	if hash.include?(item.to_sym) || hash.include?(item.to_s)
		return "Producto existe"
	else	
		return "Producto no existe"
	end	
end

opcion = 0

while true
	puts "Ingrese una opcion: \n 1: Agregar un item (item, valor)\n 2: Eliminar un item\n 3: Actualizar informacion almacenada\n 4: Ver stock total"
    opcion = gets.chomp.to_i
	data = ""

    case opcion
		when 1
			puts "Ingrese item,valor a agregar"
			data = gets.chomp
			data = data.split(",")
			puts agregar_item(inventario, data[0], data[1])

		when 2
			puts "Ingrese item a eliminar"
			data = gets.chomp
			eliminar_item(inventario, data)

		when 3
			puts "Ingrese item,valor a actualizar"
			data = gets.chomp
			data = data.split(",")
			actualizar_item(inventario, data[0], data[1])

		when 4
			puts "La suma del stock es"
			puts suma_stock(inventario)

		when 5
			puts "El producto del mayor stock es:"
			puts mayor(inventario)

		when 6
			puts "Ingrese producto a buscar:"
			data = gets.chomp
			puts data
			puts existe(inventario, data)
		when 7
			break	
	end
end