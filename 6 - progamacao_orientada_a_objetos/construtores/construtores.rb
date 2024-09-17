# Construtores

# Toda vez que uma instância de uma classe é criada,
# o Ruby procura por um método chamado initialize.
 
# Você pode criar esse método para especificar valores padrões
# durante a construção do objeto.

# Resumindo, ele é um método que SEMPRE roda quando um .new é chamado.

# Exemplo:

class Person
  def initialize(name, age) # observe que aqui o método initialize foi criado
    @name = name # aqui estamos atribuindo o valor passado para a variável de instância
    @age = age
  end

  def check
    puts "Instância de classe iniciada com os valores:"
    puts "Name = #{@name}"
    puts "Age = #{@age}"
  end
end

# Também é possível encaixar um input
class Person2
  def initialize # observe que aqui o método initialize foi criado, nesse caso os paramentros nao precisam ser passados
    print "Digite o tipo de dado para name: "
    @input_name = gets.chomp.to_s # o to_s só serve para garantir que o dado seja uma string

    print "Digite o tipo de dado para age: "
    @input_age = gets.chomp.to_i # para inteiro se usa to_i
  end

  def check_input
    puts "Instância de classe iniciada com os valores:"
    puts "Name = #{@input_name}"
    puts "Age = #{@input_age}"
  end
end



person = Person.new('João', 12) # aqui passamos os dados para o initialize
person.check

# Nesse caso, não precisa definir os dados no .new, é só passar ele puro

person2 = Person2.new # criamos a nova instância com os inputs
person2.check_input
