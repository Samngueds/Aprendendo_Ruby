<img align="margin-right: 100px;" src="https://static.wikia.nocookie.net/tibia/images/a/a9/Giant_Ruby.gif/revision/latest?cb=20181107134532&path-prefix=en&format=original" width="60" height="60">[![Typing SVG](https://readme-typing-svg.herokuapp.com?font=Oswald&weight=500&size=30&pause=1000&color=C00F0F&center=true&vCenter=true&width=435&lines=Times+em+Ruby)](https://git.io/typing-svg)<img align="margin-left: 100px;" src="https://static.wikia.nocookie.net/tibia/images/a/a9/Giant_Ruby.gif/revision/latest?cb=20181107134532&path-prefix=en&format=original" width="60" height="60">

<h2>⏲️ O que é a classe Time?</h2>

**Time** em Ruby é uma classe que permite trabalhar com datas e horários. É amplamente usada para capturar o tempo atual, calcular intervalos de tempo, formatar datas e realizar outras operações relacionadas ao tempo.

Vamos explorar a classe `Time` com exemplos e explicações detalhadas.

---

### 📌 Criando instâncias de `Time`

<details>
<summary>1️⃣ `Time.now` (Obtendo a data e hora atuais)</summary>

O método `Time.now` retorna o horário atual do sistema.

```ruby
time_atual = Time.now
puts time_atual  # Exibe a data e hora atuais
```

</details>

<details>
<summary>2️⃣ `Time.new` (Criando um objeto Time específico)</summary>

Podemos criar uma instância de `Time` para um horário específico usando `Time.new`.

```ruby
tempo_especifico = Time.new(2024, 9, 17, 10, 5, 0)
puts tempo_especifico  # Exibe: 2024-09-17 10:05:00
```

</details>

---

### ⚙️ Métodos úteis da classe `Time`

<details>
<summary>🔍 Métodos como `year`, `month`, `day`</summary>

A classe `Time` permite acessar atributos como ano, mês e dia de uma data.

```ruby
hora_atual = Time.now
puts hora_atual.year  # Exibe o ano atual
puts hora_atual.month # Exibe o mês atual
puts hora_atual.day   # Exibe o dia atual
```

</details>

<details>
<summary>🔍 Comparações entre tempos</summary>

Podemos comparar dois objetos `Time` usando os operadores `>`, `<`, `==`.

```ruby
tempo1 = Time.new(2024, 9, 17)
tempo2 = Time.now

if tempo1 > tempo2
  puts "O tempo1 é posterior a tempo2."
else
  puts "O tempo1 é anterior ou igual a tempo2."
end
```

</details>

---

### 🕓 Intervalos de tempo e cálculo

<details>
<summary>🔍 Subtraindo e somando tempos</summary>

É possível adicionar ou subtrair segundos de um objeto `Time` para calcular novos tempos.

```ruby
tempo_atual = Time.now
futuro = tempo_atual + 60  # Adiciona 60 segundos (1 minuto) ao tempo atual
passado = tempo_atual - 3600  # Subtrai 3600 segundos (1 hora) do tempo atual

puts futuro
puts passado
```

</details>

<details>
<summary>🔍 Calculando a diferença entre dois objetos `Time`</summary>

A diferença entre dois tempos retorna o número de segundos entre eles.

```ruby
inicio = Time.new(2024, 9, 17, 10, 0, 0)
fim = Time.now

diferenca = fim - inicio  # Retorna a diferença em segundos
puts "Diferença em segundos: #{diferenca}"
```

</details>

---

### 🔄 Formatação de datas

<details>
<summary>🔍 Usando `strftime` para formatar datas</summary>

O método `strftime` permite formatar um objeto `Time` em diferentes formatos de data e hora.

```ruby
tempo_atual = Time.now

# Formatar a data como "Dia/Mês/Ano Hora:Minuto"
formato_personalizado = tempo_atual.strftime("%d/%m/%Y %H:%M")
puts formato_personalizado
```

</details>

---

### 📅 Fusos horários

<details>
<summary>🔍 Definindo fusos horários com `Time`</summary>

Podemos definir ou verificar o fuso horário de um objeto `Time`.

```ruby
tempo_atual = Time.now
puts tempo_atual.zone  # Exibe o fuso horário (ex: "UTC", "GMT", etc.)

tempo_nova_york = Time.new(2024, 9, 17, 10, 0, 0, "-04:00")
puts tempo_nova_york  # Exibe a hora em Nova York (-4 horas UTC)
```

</details>

---

### 🧩 Métodos avançados de `Time`

<details>
<summary>🔍 Verificando se é hora de verão</summary>

Podemos verificar se uma data específica está dentro do horário de verão.

```ruby
tempo_atual = Time.now

if tempo_atual.dst?
  puts "Estamos no horário de verão!"
else
  puts "Não estamos no horário de verão."
end
```

</details>

---

### Exemplo completo de uso de `Time`

```ruby
# Obtendo o tempo atual
agora = Time.now
puts "Hora atual: #{agora}"

# Adicionando 1 dia (86400 segundos) ao tempo atual
amanha = agora + 86400
puts "Amanhã: #{amanha}"

# Verificando o ano, mês e dia
puts "Ano atual: #{agora.year}"
puts "Mês atual: #{agora.month}"
puts "Dia atual: #{agora.day}"

# Formatação personalizada da data
data_formatada = agora.strftime("%d/%m/%Y %H:%M")
puts "Data formatada: #{data_formatada}"
```

---

## 🛠️ Como usar este repositório

Este README contém informações detalhadas sobre a classe `Time` em Ruby. Explore as seções acima para aprender mais sobre cada recurso e veja os exemplos práticos para entender como implementar o uso de tempos em seus projetos.

## 🤝 Contribuições

Contribuições são bem-vindas! Se você tem sugestões de melhorias ou novos exemplos, sinta-se à vontade para abrir uma pull request.
