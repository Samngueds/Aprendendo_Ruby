# regex_exemplos.rb

# Exemplo 1: Verificar se uma string contém um email válido
def validar_email(email)
  regex = /\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z]{2,}\b/i
  if regex.match?(email)
    puts "Email válido: #{email}"
  else
    puts "Email inválido: #{email}"
  end
end

validar_email("usuario@example.com")  # Email válido
validar_email("email_invalido")       # Email inválido

# Exemplo 2: Substituir todos os dígitos por 'X'
def substituir_digitos(texto)
  puts texto.gsub(/\d/, 'X')
end

substituir_digitos("O número é 123-456-7890")  # O número é XXX-XXX-XXXX

# Exemplo 3: Extrair números de uma string
def extrair_numeros(texto)
  numeros = texto.scan(/\d+/)
  puts "Números encontrados: #{numeros.join(', ')}"
end

extrair_numeros("Meu número é 1234 e minha idade é 30")  # Números encontrados: 1234, 30

# Exemplo 4: Verificar se a string começa com uma palavra específica
def verificar_inicio(texto, palavra)
  regex = /^#{palavra}/
  if regex.match?(texto)
    puts "A string começa com '#{palavra}'"
  else
    puts "A string não começa com '#{palavra}'"
  end
end

verificar_inicio("ruby é incrível", "ruby")  # A string começa com 'ruby'
verificar_inicio("Programar em ruby", "ruby")  # A string não começa com 'ruby'

# Exemplo 5: Verificar se a string termina com uma palavra específica
def verificar_fim(texto, palavra)
  regex = /#{palavra}$/
  if regex.match?(texto)
    puts "A string termina com '#{palavra}'"
  else
    puts "A string não termina com '#{palavra}'"
  end
end

verificar_fim("Eu amo ruby", "ruby")  # A string termina com 'ruby'
verificar_fim("Eu amo programar", "ruby")  # A string não termina com 'ruby'

# Exemplo 6: Encontrar palavras com letras repetidas
def encontrar_letras_repetidas(texto)
  letras_repetidas = texto.scan(/(\w)\1+/)
  puts "Letras repetidas: #{letras_repetidas.flatten.join(', ')}"
end

encontrar_letras_repetidas("boooom diaaa, ellaaaa chegouuu")  # Letras repetidas: o, a, l, a, u

# Exemplo 7: Validação de senha simples (deve conter pelo menos 8 caracteres, 1 letra e 1 número)
def validar_senha(senha)
  regex = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/
  if regex.match?(senha)
    puts "Senha válida"
  else
    puts "Senha inválida"
  end
end

validar_senha("senha123")  # Senha válida
validar_senha("1234567")   # Senha inválida

# Exemplo 8: Dividir uma string por espaços em branco
def dividir_por_espacos(texto)
  partes = texto.split(/\s+/)
  puts "Partes da string: #{partes.join(', ')}"
end

dividir_por_espacos("Essa é uma frase com vários espaços")  # Partes da string: Essa, é, uma, frase, com, vários, espaços
