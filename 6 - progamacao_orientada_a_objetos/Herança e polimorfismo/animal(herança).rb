class Animal
  def dular
    puts "toing! toing! toing! toing!"
  end


  def dormi
    puts "Zzzzzz"
  end
end

# para fazemos uma herança de  classes usando  o  simbulo de <

# isso indica que a classe no caso que esta  recebendo 
# o sinal  ela vai herda  da  outra classes os metodos
# a  classe  vira uma classe pai, e ela pode espalha
# os metodos para varias classes ao mesmo tempo 

# exemplo: 

class Cachorro < Animal 
  def latir
    puts "au au"
  end
end

# com isso a classe cachorro vai herda
# os metodos da  classe animal

#como citado anterriomente

# e possivel que outras classes herden essa classe

# exemplo: 

class Gato < Animal
  def miar
    puts "meow meow"
  end
end

#  com isso as duas classe herdaram os  metodos
#  da classe animal 
# sendo possivel chama-los em um  objeto associado a classe filho

# exemplo:

cachorro = Cachorro.new
cachorro.latir
cachorro.dormi

gato = Gato.new
gato.miar
gato.dormi

# como vemos aqui o metodo dormi foi chamado nas  duas  classes

# resultado do  codigo:

=begin
resultado da chamada do objeto cachorro:
au au
Zzzzzz

resultado da  chamada do objeto gato:
meow meow
Zzzzzz
=end