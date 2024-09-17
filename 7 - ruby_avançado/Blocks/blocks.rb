# um bloco pode ser entendido como uma função anonima, ou seja
# uma função sem nome.

# é definido entre : do..end ou colchetes  = []

# da mesma forma que os metodos que você viu até agora, 
# pode receber paramentros para a sua execução.

# Chaves = { }; Colchetes = [ ]

# block simples
puts  "<-------block slimpes------->"
puts "5.times {puts ""exec the block""}"
5.times {puts "exec the block"}

# block de um função predefinida no  ruby:
puts  "<-------block de um função predefinida no ruby------->"
sum = 0 # aqui definimos sum como 0
numbers = [1, 4, 5, 10] #  aqui criamos um array
numbers.each {|number| sum += number} # aqui criamos um each usando block de uma linha
puts sum
# damos o paramentro number, que seria  o  conteudo dentro d e numbers 

# block de  multipla linhas seria  o do end

puts "<-------block de multiplas linas------->"

foo = {2 => 3, 4 => 5}

foo.each do |key, vaule|
  puts "key = #{key}"
  puts "vaule = #{vaule}"
  puts "key * vauler = #{key * vaule}"
end


puts "<-------blocos em metodos------->"

# veja que aqui definimos um metodo  que recebe como paramentro  um block

def foo

  yield # aqui definimos um yield que serve para chama o block
  yield

end


foo {puts "executando o bloco"} #com isso podemos chama o bloco
#veja que e e possivel chama mesmo que o bloco esteja fora do metodo

# tambem e possivel fazeer isso usado o do end

# tambem e possivel verifica se um bloco foi passado como  parametro

def foo2
  if block_given? # o block_given? e usado no if para verifica
    # se um bloco de parametro foi dado

    yield 
    #chama o bloco



  else
    puts "sem parametros do tipo bloco"
  end
end

puts "<-------block em metodos mas misturado com variaveis------->"

foo2 {puts "com paramentros do tipo bloco passados"}

#lembrando que so e possivel usa um bloco por metodo

# tambem e possivel passa bloco para variaveis e chama ele em metodos

def pc(off, &block) #observe que aqui foi passado um &block 
  #como prametro assim sendo possivel chama o bloco no metodo 
  # com um paramentro ja definido
  @off = off
  block.call #veja que foi dado  um block.call assim chamado o bloco que foi definido 

end

pc ('desligando') {puts "okay ,#{@off} o Pc"}


#tambem e possivel passa um block com varias linhas de paramentro usando 
# o do end

def foo(numbers, &block)
  if block_given?
    numbers.each do |key, vaule|
      block.call(key, vaule)
    end
      
  end
end


numbers = {2 => 2 , 4 => 3, 3 => 4}

foo(numbers) do |key, vaule|
  puts "#{key} * #{vaule} = #{key * vaule}"
  puts "#{key} * #{vaule} = #{key + vaule}"
  puts "---"
end
