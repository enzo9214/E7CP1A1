meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

ventas_x_mes = {}

meses.each_with_index do |index, value|
  ventas_x_mes[index] = ventas[value]
end

puts ventas_x_mes

puts ventas_x_mes.invert

puts ventas_x_mes.invert.sort.last[-1]
