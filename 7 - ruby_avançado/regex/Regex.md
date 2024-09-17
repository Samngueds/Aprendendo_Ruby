<img align="margin-right: 100px;" src="https://static.wikia.nocookie.net/tibia/images/a/a9/Giant_Ruby.gif/revision/latest?cb=20181107134532&path-prefix=en&format=original" width="60" height="60">[![Typing SVG](https://readme-typing-svg.herokuapp.com?font=Oswald&weight=500&size=30&pause=1000&color=C00F0F&center=true&vCenter=true&width=435&lines=Regex+em+Ruby)](https://git.io/typing-svg)<img align="margin-left: 100px;" src="https://static.wikia.nocookie.net/tibia/images/a/a9/Giant_Ruby.gif/revision/latest?cb=20181107134532&path-prefix=en&format=original" width="60" height="60">

<h2>🔎 O que é Regex?</h2>

**Regex**, ou **expressão regular**, é uma sequência de caracteres que define um padrão de pesquisa. Em sua essência, regex é uma linguagem de padrões utilizada para identificar combinações de caracteres dentro de strings. Ela é uma ferramenta poderosa para validação de entradas, busca e manipulação de textos, permitindo encontrar e extrair informações específicas de uma maneira muito eficiente.

As expressões regulares são amplamente utilizadas em muitas linguagens de programação, e em Ruby, regex é uma funcionalidade nativa e essencial para trabalhar com dados textuais. Abaixo, apresentamos alguns conceitos básicos e exemplos de uso de regex em Ruby.

---

### 📌 Formas de criar um regex

<details>
<summary>1️⃣ /.../ (Usando o formato padrão de regex)</summary>

Este formato utiliza barras `//` para delimitar a expressão regular.

```ruby
regex = /expressao/
puts regex.match?("minha expressao aqui") # true
```

</details>

<details>
<summary>2️⃣ %r{...} (Usando delimitadores alternativos)</summary>

Usar `%r{}` permite definir um regex sem precisar escapar barras inclinadas `/`.

```ruby
regex = %r{expressao}
puts regex.match?("minha expressao aqui") # true
```

</details>

<details>
<summary>3️⃣ Regexp.new (Criando regex com o construtor)</summary>

É possível criar expressões regulares usando `Regexp.new`.

```ruby
regex = Regexp.new('expressao')
puts regex.match?("minha expressao aqui") # true
```

</details>

---

### ⚙️ Operador `=~`

O operador `=~` retorna a posição do primeiro caractere que corresponde à expressão regular. Se não houver correspondência, retorna `nil`.

<details>
<summary>🔍 Exemplo básico</summary>

```ruby
# Retorna o índice da correspondência
puts "ruby" =~ /by/   # 2

# Quando não há correspondência, retorna nil
puts "ruby" =~ /rails/  # nil
```

</details>

---

### 🧵 Método `match`

O método `match` retorna um objeto `MatchData` contendo informações sobre o padrão encontrado.

<details>
<summary>🔍 Exemplo básico</summary>

```ruby
frase = "Olá, como vai?"
dados_da_correspondencia = /como/.match(frase)
puts dados_da_correspondencia  # retorna 'como'
```

</details>

---

### 🔧 Acessando correspondências com `MatchData`

Com `MatchData`, é possível acessar diferentes partes da string:

<details>
<summary>🔍 Métodos `pre_match` e `post_match`</summary>

- `pre_match` retorna o conteúdo anterior à correspondência.
- `post_match` retorna o conteúdo posterior à correspondência.

```ruby
frase = "Olá, como vai?"
dados_da_correspondencia = /como/.match(frase)

# Conteúdo antes da correspondência
puts dados_da_correspondencia.pre_match  # "Olá, "

# Conteúdo depois da correspondência
puts dados_da_correspondencia.post_match  # " vai?"
```

</details>

---

### 🧑‍🔬 Grupos de captura

Grupos de captura permitem agrupar partes de um padrão e acessar essas partes individualmente.

<details>
<summary>🔍 Exemplo de grupo de captura</summary>

```ruby
regex = /(\w+), (\w+)/
correspondencia = regex.match("sobrenome, nome")

# Primeiro grupo capturado
puts correspondencia[1]  # "sobrenome"

# Segundo grupo capturado
puts correspondencia[2]  # "nome"
```

</details>

---

### 🔄 Modificadores de Regex

É possível adicionar modificadores no final da regex para alterar seu comportamento.

<details>
<summary>🔍 Exemplo de modificadores</summary>

```ruby
regex = /ruby/i   # 'i' ignora a distinção entre maiúsculas e minúsculas
puts regex.match?("Ruby")  # true

regex_multilinha = /inicio.*fim/m  # 'm' permite que '.' corresponda a novas linhas
puts regex_multilinha.match?("inicio\nteste\nfim")  # true
```

</details>

---

### 🔍 Ancoragem de padrões

<details>
<summary>🔍 Exemplos de ancoragem com `^` e `$`</summary>

- `^` âncora o início de uma string.
- `$` âncora o fim de uma string.

```ruby
# Exemplo com âncora no início (^)
regex_inicio = /^inicio/
puts regex_inicio.match?("inicio de tudo")  # true

# Exemplo com âncora no fim ($)
regex_fim = /fim$/
puts regex_fim.match?("final do fim")  # true
```

</details>

---

### 🔢 Quantificadores

<details>
<summary>🔍 Exemplos de quantificadores</summary>

Quantificadores indicam quantas vezes um padrão pode aparecer.

```ruby
regex = /\d{3}/   # Correspondência de exatamente 3 dígitos
puts regex.match?("123")  # true
puts regex.match?("12")   # false

regex = /\d{2,5}/   # Correspondência de 2 a 5 dígitos
puts regex.match?("12345")  # true
puts regex.match?("1")      # false
```

</details>

---

### 🧩 Meta caracteres comuns

<details>
<summary>📌 Principais metacaracteres</summary>

| Metacaractere | Significado                           |
|---------------|---------------------------------------|
| `.`           | Corresponde a qualquer caractere      |
| `\d`          | Corresponde a um dígito (0-9)         |
| `\w`          | Corresponde a qualquer caractere alfanumérico |
| `\s`          | Corresponde a qualquer espaço em branco |
| `\b`          | Corresponde a uma borda de palavra    |

```ruby
# Exemplo de uso de metacaracteres
regex = /\d{3}-\d{3}-\d{4}/  # Corresponde a um número de telefone no formato XXX-XXX-XXXX
puts regex.match?("123-456-7890")  # true
```

</details>

---

### Exemplo completo de Regex em Ruby

```ruby
text = "O email do usuário é usuario@example.com e o telefone é 123-456-7890."

# Correspondência de email
email_regex = /\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z]{2,}\b/i
email = text.match(email_regex)
puts "Email: #{email}"

# Correspondência de telefone
telefone_regex = /\d{3}-\d{3}-\d{4}/
telefone = text.match(telefone_regex)
puts "Telefone: #{telefone}"
```

---

## 🛠️ Como usar este repositório

Este README contém informações detalhadas sobre como usar expressões regulares (Regex) em Ruby. Explore as seções acima para aprender mais sobre cada recurso e veja os exemplos práticos para entender como implementar regex em seus próprios projetos.

## 🤝 Contribuições

Contribuições são sempre bem-vindas! Se você tem sugestões de melhorias ou quer adicionar novos exemplos, sinta-se à vontade para abrir uma *pull request*.
