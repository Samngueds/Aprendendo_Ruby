# atributos
# (ou variaveis de instacia)
# são sempres privados e começam com @, eles só podem ser alterado pelos metodos de um
# objeto

# observe que uma classe chamada dog foi criada


class Dog

  def name # aqui definimos um metodo  que vai ler a variavel
    @name # aqui criamos uma variavel que vai sempre retornta  um valor
    # sempre o final de um metodo da return 
  end

  def name= name # o segundo metodo escreve a variavel
    # aqui foi passado um tipo de dado para o metodo
    @name = name # agora aqui tamben foi abribido um valor para a variavel
  end
end


dog = Dog.new # criamos o objeto

dog.name = 'marlon' # aqui  nois definimos o  tipo de dado que o metodo + variavel vai receber

puts dog.name # aqui nois imprimimos objeto + o metodo


# existe  uma forma mais pratica e dinamica  de chega  ao mesmo resultado

# por exemplo

class Cat
  attr_accessor :name1, :age # usando o atributo accessor 
  # aqui  e feito  uma chamada que chama o abritubo accessor 
  # que basicamente ele cria os 2 metodos para cada dado que e informado aqui.
end

cat = Cat.new

cat.name1 = 'layla'
puts cat.name1

cat.age = '3 meses'
puts cat.age