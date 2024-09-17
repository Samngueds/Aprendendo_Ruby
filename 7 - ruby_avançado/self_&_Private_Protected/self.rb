class Exemplo
  def metodo
    puts self # Referência ao objeto atual
  end
  
  def self.metodo_classe
    puts self # Referência à classe Exemplo
  end
end

obj = Exemplo.new
obj.metodo             # Saída: #<Exemplo:0x00007fd77eac0d40>

puts "\n"

Exemplo.metodo_classe 
puts "Saída: Exemplo , dessa forma tambem não  precisamos instaciar a classe ou objeto"
