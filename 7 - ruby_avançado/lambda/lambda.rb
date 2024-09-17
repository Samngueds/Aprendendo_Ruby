# lambda são similares aos blocks mas podem ser armazenadas em variaveis
# ja os blocks não

fist_lambda = lambda { puts "my fist lambda"} # observe que aqui chamamos
# lambda antes  de chamamos um block 
# meio q lambda recebe o block
fist_lambda.call

# existe uma sintax para o lambda 

# vc pode usa -> em vez de usa a palavra

second_lambda = -> {puts "my second lambda"}

second_lambda.call


#tambem podemos receber parametros no nosso lambda
# tipo um array:

third_lambda = -> (names){names.each { |name| puts name  } }

# -> seria o lambda

# (names) seria um parametro

#{ aqui seria dentro o lambda}

# {{e aqui chamamos um block com each {que recebe o name e depois executa o puts}}}

names = ["joao","maria", "pedro"]

third_lambda.call(names)



# tambem e possivel ter um lambda de muilplas linhas


my_lambda = -> do |numbers|
  index = 0
  puts 'numero atual + Proximo numero'
  numbers.each do |number|
    return if numbers[index] == numbers.last
    puts "(#{numbers[index]}+#{numbers[index + 1]})"
    puts numbers[index] + numbers[index + 1]
    index +=1
  end
  
end

numbers = [1, 2, 3, 4]

my_lambda.call(numbers)


# o lambda poder ser reutulizado muiltiplas vezes


# o lambda tambem pode ser usando como argumento  para um metodo 

def foo(fist_lambda, second_lambda) # diferente  do  block que precisa ser chamado &block
  # lambda pode ser  passado como parametro normal
  fist_lambda.call
  second_lambda.call
end

fist_lambda = -> {puts "my first lambda"}

second_lambda = -> {puts "my second lambda"}
