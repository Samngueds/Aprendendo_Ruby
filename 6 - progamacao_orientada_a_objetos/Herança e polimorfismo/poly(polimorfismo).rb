=begin
o poliformlismo em ruby e poder chama metodos com mesmo nome
e ter comportamentos diferentes

e usando quando uma  classe ja tem um metodo igual(nomeado)  
a que esta na classe pai ele sobrescreve esse metodo da classe pai 
deixando o metodo que esta  na classe filho intacto
=end

# exemplo:

class Instrumento
  def escrever
    puts "Escrevendo ..."

  end
end

# objserve que a classe instrumento foi criada  e recebeu um metodo
# chamado escrever

class Teclado < Instrumento
end
# aqui temos  uma classe vazia que nao recebeu nem um  metodo


class Lapis < Instrumento
  def escrever
    puts "Escrevendo a Lapis"
  end
end

class Caneta < Instrumento
  def escrever
    puts "Escrevendo a Caneta"
  end
end

# observe que aqui temos duas classes com o mesmo metodo
# da classe  pai

teclado = Teclado.new
lapis = Lapis.new
caneta = Caneta.new

# aqui foi atribuido um objeto a cada  classe

puts "Lapis:" , lapis.escrever
puts "caneta:", caneta.escrever
puts "teclado:", teclado.escrever

#  ainda  e possivel chama o metodo antigo usando a palavra
# "super" ele vai chama o metodo da função pai 