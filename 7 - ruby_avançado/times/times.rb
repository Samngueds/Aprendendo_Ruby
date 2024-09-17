time = Time.now
# 🕰️ Exemplos Práticos da Classe Time em Ruby

# Obtendo o tempo atual
agora = Time.now
puts "Hora atual: #{agora}"

# Criando um objeto Time para um horário específico
tempo_especifico = Time.new(2024, 9, 17, 10, 5, 0)
puts "Tempo específico: #{tempo_especifico}"

# Adicionando e subtraindo tempo
futuro = agora + 60  # Adiciona 60 segundos (1 minuto) ao tempo atual
passado = agora - 3600  # Subtrai 3600 segundos (1 hora) do tempo atual
puts "Tempo futuro: #{futuro}"
puts "Tempo passado: #{passado}"

# Calculando a diferença entre dois objetos Time
inicio = Time.new(2024, 9, 17, 10, 0, 0)
fim = Time.now
diferenca = fim - inicio  # Retorna a diferença em segundos
puts "Diferença em segundos: #{diferenca}"

# Formatação de datas usando strftime
formato_personalizado = agora.strftime("%d/%m/%Y %H:%M")
#%d para dia
#%m para mes
#%y para ano
puts "Data formatada: #{formato_personalizado}"

# Verificando o ano, mês e dia
puts "Ano atual: #{agora.year}"
puts "Mês atual: #{agora.month}"
puts "Dia atual: #{agora.day}"

# Definindo e verificando fusos horários
tempo_nova_york = Time.new(2024, 9, 17, 10, 0, 0, "-04:00")
puts "Hora em Nova York: #{tempo_nova_york}"

# Verificando se é horário de verão
if agora.dst?
  puts "Estamos no horário de verão!"
else
  puts "Não estamos no horário de verão."
end

# Comparações entre tempos
tempo1 = Time.new(2024, 9, 17)
tempo2 = Time.now

if tempo1 > tempo2
  puts "O tempo1 é posterior a tempo2."
else
  puts "O tempo1 é anterior ou igual a tempo2."
end
