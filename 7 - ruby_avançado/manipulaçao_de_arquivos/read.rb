puts '---Lista de compras---'

file  = File.open('compras.txt')

file.each do |line|
  puts line
end