personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]
personas_hash = {}

personas.each_with_index{ |persona, key| personas_hash[persona] = edades[key] }

puts personas_hash

def devolver_edades(new_hash = {})
  puts '******************'
  new_hash.map{ |key, value| value }
end

def devolver_edades2(new_hash = {})
  puts '******************'
  new_hash.values
end

def devolver_edad(new_hash = {}, persona)
  puts '******************'
  new_hash[persona] if new_hash.include?(persona)
end


puts devolver_edades(personas_hash)
puts devolver_edades2(personas_hash)
puts devolver_edad(personas_hash, 'Alejandro')
