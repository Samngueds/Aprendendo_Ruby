# Função para exibir o menu principal do aplicativo
def display_intro
  puts "Bem-vindo ao aplicativo interativo de Ruby!"
  puts "Escolha uma opção para aprender mais:"
  puts "1. Como Fazer Input e Output"
  puts "2. Tipos de Dados"
  puts "3. Operadores"
  puts "4. Valores Especiais e Comparações"
  puts "5. Sair"
end

# Função para mostrar como fazer entrada e saída em Ruby
def input_output
  puts "\nComo Fazer Input e Output em Ruby:"
  
  # Explicação sobre saída de dados
  puts "1. Saída (Output):"
  puts "   - Utiliza o método `puts` para imprimir informações."
  puts "   Exemplo:"
  puts "   ```ruby"
  puts "   puts 'Olá, Mundo!'"
  puts "   ```"
  
  # Explicação sobre entrada de dados
  puts "2. Entrada (Input):"
  puts "   - Utiliza o método `gets` para capturar a entrada do usuário."
  puts "   - O método `chomp` é usado para remover o caractere de nova linha do final da entrada."
  puts "   Exemplo:"
  puts "   ```ruby"
  puts "   print 'Digite seu nome: '"
  puts "   nome = gets.chomp"
  puts "   puts 'Olá, ' + nome + '!'"
  puts "   ```"
end

# Função para mostrar os tipos de dados em Ruby
def tipos_de_dados
  puts "\nTipos de Dados em Ruby:"
  
  # Explicação sobre Integers
  puts "1. Integer: Representa números inteiros (positivos, negativos e zero)."
  puts "   Exemplo:"
  puts "   ```ruby"
  puts "   int = 10"
  puts "   puts int.class  # Output: Integer"
  puts "   ```"
  
  # Explicação sobre Booleans
  puts "2. Boolean: Representa valores lógicos `true` ou `false`."
  puts "   Exemplo:"
  puts "   ```ruby"
  puts "   boo = true"
  puts "   puts boo.class  # Output: TrueClass"
  puts "   ```"
  
  # Explicação sobre Floats
  puts "3. Float: Representa números reais com ponto flutuante."
  puts "   Exemplo:"
  puts "   ```ruby"
  puts "   float_num = 10.5"
  puts "   puts float_num.class  # Output: Float"
  puts "   ```"
  
  # Explicação sobre Arrays
  puts "4. Array: Uma lista ordenada de dados em um único objeto. Definidos com colchetes `[]`."
  puts "   Exemplo:"
  puts "   ```ruby"
  puts "   array = ['0_position', '1_position', '2_position', '3_position']"
  puts "   puts array.class  # Output: Array"
  puts "   ```"
  
  # Explicação sobre Symbols
  puts "5. Symbol: Um tipo de dado semelhante a String, mas imutável e definido com dois pontos `:`."
  puts "   Exemplo:"
  puts "   ```ruby"
  puts "   simbolo = :simbolo"
  puts "   puts simbolo.class  # Output: Symbol"
  puts "   ```"
  
  # Explicação sobre Hashes
  puts "6. Hash: Representa uma coleção de pares chave-valor. Definidos com chaves `{}`."
  puts "   Exemplo:"
  puts "   ```ruby"
  puts "   hash = {hash1: '.png', hash2: '.jpeg'}"
  puts "   puts hash.class  # Output: Hash"
  puts "   ```"
end

# Função para mostrar os operadores em Ruby
def operadores
  puts "\nOperadores em Ruby:"
  
  # Explicação sobre o operador de soma
  puts "1. Soma (+): Adiciona os valores."
  puts "   Exemplo:"
  puts "   ```ruby"
  puts "   x = 5"
  puts "   y = 3"
  puts "   soma = x + y"
  puts "   puts soma  # Output: 8"
  puts "   ```"
  
  # Explicação sobre o operador de subtração
  puts "2. Subtração (-): Subtrai os valores."
  puts "   Exemplo:"
  puts "   ```ruby"
  puts "   sub = x - y"
  puts "   puts sub  # Output: 2"
  puts "   ```"
  
  # Explicação sobre o operador de multiplicação
  puts "3. Multiplicação (*): Multiplica os valores."
  puts "   Exemplo:"
  puts "   ```ruby"
  puts "   mult = x * y"
  puts "   puts mult  # Output: 15"
  puts "   ```"
  
  # Explicação sobre o operador de divisão
  puts "4. Divisão (/): Divide os valores."
  puts "   Exemplo:"
  puts "   ```ruby"
  puts "   div = x / y"
  puts "   puts div  # Output: 1"
  puts "   ```"
  
  # Explicação sobre o operador de módulo (resto da divisão)
  puts "5. Módulo (%): Resto da divisão."
  puts "   Exemplo:"
  puts "   ```ruby"
  puts "   modulo = x % y"
  puts "   puts modulo  # Output: 2"
  puts "   ```"
  
  # Explicação sobre o operador de expoente (potência)
  puts "6. Expoente (**): Potência."
  puts "   Exemplo:"
  puts "   ```ruby"
  puts "   expoente = x ** y"
  puts "   puts expoente  # Output: 125"
  puts "   ```"
end

# Função para mostrar valores especiais e comparações em Ruby
def valores_especiais_comparacoes
  puts "\nValores Especiais e Comparações em Ruby:"
  
  # Explicação sobre valores especiais
  puts "1. Valores Especiais:"
  puts "   - `nil`: Representa a ausência de valor."
  puts "   - `true`: Representa verdadeiro."
  puts "   - `false`: Representa falso."
  puts "   Exemplo:"
  puts "   ```ruby"
  puts "   puts nil.class #=> NilClass"
  puts "   puts true.class #=> TrueClass"
  puts "   puts false.class #=> FalseClass"
  puts "   ```"
  
  # Explicação sobre comparações
  puts "2. Comparações:"
  puts "   - Igualdade (`==`): Compara se dois valores são iguais."
  puts "   - Desigualdade (`!=`): Compara se dois valores são diferentes."
  puts "   - Mais comparações como `<`, `>`, `<=`, `>=`."
  puts "   Exemplo:"
  puts "   ```ruby"
  puts "   puts '1 == 1: #{1 == 1}' #=> true"
  puts "   puts '2 == 1: #{2 == 1}' #=> false"
  puts "   puts '1 != 1: #{1 != 1}' #=> false"
  puts "   puts '2 != 1: #{2 != 1}' #=> true"
  puts "   puts '!true: #{!true}'  #=> false"
  puts "   puts '!false: #{!false}' #=> true"
  puts "   puts '!nil: #{!nil}'   #=> true"
  puts "   puts '!false: #{!false}' #=> true"
  puts "   puts '!0: #{!0}'     #=> false"
  puts "   puts '1 < 10: #{1 < 10}' #=> true"
  puts "   puts '1 > 10: #{1 > 10}' #=> false"
  puts "   puts '2 <= 2: #{2 <= 2}' #=> true"
  puts "   puts '2 >= 2: #{2 >= 2}' #=> true"
  puts "   ```"
end

# Função principal que controla o fluxo do aplicativo
def main
  loop do
    display_intro  # Exibe o menu de opções
    print "\nEscolha uma opção: "
    option = gets.chomp.to_i  # Obtém a escolha do usuário

    case option
    when 1
      input_output  # Chama a função para entrada e saída
    when 2
      tipos_de_dados  # Chama a função para tipos de dados
    when 3
      operadores  # Chama a função para operadores
    when 4
      valores_especiais_comparacoes  # Chama a função para valores especiais e comparações
    when 5
      puts "Saindo... Até logo!"  # Mensagem de saída
      break  # Encerra o loop e sai do programa
    else
      puts "Opção inválida. Tente novamente."  # Mensagem para opções inválidas
    end

    puts "\nPressione Enter para continuar..."  # Pausa para o usuário visualizar a saída
    gets
  end
end

# Inicia a execução do programa
main
