array =  [1,2,3,4]

# \n e uma quebra de linha
puts "\n Executando .map e multiplicando cada item por 2"
# .map nao  altera o conteudo do array original

new_array = array.map do |a|
  a * 2
end

puts "\n Array original"
puts "#{array}"


puts "\n Novo Array"
puts "#{new_array}"


puts "\n Executando .map! e multiplicando cada item por 2"
# .map! força que o conteudo do array seja alterado

new_array = array.map! do |a|
  a * 2
end

puts "\n Array original"
puts "#{array}"
puts ''
