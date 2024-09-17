puts '---escrevendo no arquivo---'

File.open('compras.txt','a') do |line|
  line.puts('arroz')
  line.puts('feijao')
  line.print("gelatina")
  line.print(" de ")
  line.print("morango")
end
