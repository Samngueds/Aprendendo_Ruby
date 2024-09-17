<img align="margin-right: 100px;" src="https://static.wikia.nocookie.net/tibia/images/a/a9/Giant_Ruby.gif/revision/latest?cb=20181107134532&path-prefix=en&format=original" width="60" height="60">[![Typing SVG](https://readme-typing-svg.herokuapp.com?font=Oswald&weight=500&size=30&pause=1000&color=C00F0F&center=true&vCenter=true&width=435&lines=Leitura+de+Arquivos+em+Ruby)](https://git.io/typing-svg)<img align="margin-left: 100px;" src="https://static.wikia.nocookie.net/tibia/images/a/a9/Giant_Ruby.gif/revision/latest?cb=20181107134532&path-prefix=en&format=original" width="60" height="60">

<h2>📂 Leitura de Arquivos em Ruby</h2>

Em Ruby, a leitura de arquivos é uma tarefa fundamental para manipulação de dados. Abaixo estão os principais métodos e técnicas para ler arquivos, desde a abertura e leitura básica até a manipulação de arquivos binários.

---

### 📝 Abrindo Arquivos

Para abrir um arquivo, você pode usar o método `File.open`. É possível abrir arquivos em diferentes modos, como leitura (`"r"`), escrita (`"w"`), e adição (`"a"`).

<details>
<summary>🔍 Exemplo de abertura de arquivo</summary>

```ruby
# Abre um arquivo para leitura
File.open('example.txt', 'r') do |file|
  content = file.read
  puts content
end
```

</details>

---

### 📖 Leitura de Arquivos Texto

Após abrir um arquivo em modo leitura, você pode utilizar métodos para ler o conteúdo. Os métodos mais comuns são `read`, `readline`, e `readlines`.

<details>
<summary>🔍 Exemplo de leitura de arquivo texto</summary>

```ruby
# Lê o conteúdo completo do arquivo
File.open('example.txt', 'r') do |file|
  content = file.read
  puts content
end

# Lê uma linha do arquivo
File.open('example.txt', 'r') do |file|
  line = file.readline
  puts line
end

# Lê todas as linhas do arquivo em um array
File.open('example.txt', 'r') do |file|
  lines = file.readlines
  puts lines
end
```

</details>

---

### 🗂️ Manipulação de Caminhos

Você pode manipular caminhos de arquivos usando a biblioteca `File`. Isso inclui a obtenção do caminho absoluto, verificação da existência de um arquivo e mais.

<details>
<summary>🔍 Exemplo de manipulação de caminhos</summary>

```ruby
# Obtém o caminho absoluto de um arquivo
puts File.absolute_path('example.txt')

# Verifica se o arquivo existe
if File.exist?('example.txt')
  puts "O arquivo existe."
else
  puts "O arquivo não existe."
end
```

</details>

---

### 🗃️ Leitura de Arquivos Binários

Para ler arquivos binários, você pode abrir o arquivo em modo binário (`"rb"`) e ler seu conteúdo.

<details>
<summary>🔍 Exemplo de leitura de arquivo binário</summary>

```ruby
# Abre um arquivo binário para leitura
File.open('example.bin', 'rb') do |file|
  content = file.read
  puts content.unpack('H*').first  # Converte para uma representação hexadecimal
end
```

</details>

---

### 🔧 Trabalhando com Streams de Arquivo

Ruby permite trabalhar com streams de arquivo, o que é útil para ler arquivos grandes sem carregar tudo na memória de uma vez.

<details>
<summary>🔍 Exemplo de leitura de grandes arquivos</summary>

```ruby
# Lê um arquivo grande linha por linha
File.foreach('large_file.txt') do |line|
  puts line
end
```

</details>

---

## 🛠️ Como usar este repositório

Este README contém informações detalhadas sobre como ler arquivos em Ruby. Explore as seções acima para aprender sobre diferentes métodos e técnicas de leitura de arquivos. Experimente os exemplos para se familiarizar com a manipulação de arquivos em seus projetos Ruby.

## 🤝 Contribuições

Contribuições são bem-vindas! Se você tem sugestões de melhorias ou novos exemplos, sinta-se à vontade para abrir uma *pull request*.