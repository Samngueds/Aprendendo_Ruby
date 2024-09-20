<img align="margin-right: 100px;" src="https://static.wikia.nocookie.net/tibia/images/a/a9/Giant_Ruby.gif/revision/latest?cb=20181107134532&path-prefix=en&format=original" width="60" height="60">[![Typing SVG](https://readme-typing-svg.herokuapp.com?font=Oswald&weight=500&size=30&pause=1000&color=C00F0F&center=true&vCenter=true&width=435&lines=Manipulação+de+Arquivos+em+Ruby)](https://git.io/typing-svg)<img align="margin-left: 100px;" src="https://static.wikia.nocookie.net/tibia/images/a/a9/Giant_Ruby.gif/revision/latest?cb=20181107134532&path-prefix=en&format=original" width="60" height="60">

<h2>📂 Manipulação de Arquivos em Ruby</h2>

Em Ruby, a manipulação de arquivos é essencial para lidar com dados. Abaixo, você encontrará métodos e exemplos práticos para abrir, ler, escrever, manipular binários, e trabalhar com streams de arquivo.

---

### 📝 Abrindo e Fechando Arquivos

Para abrir um arquivo, usamos `File.open`. Há diferentes modos de abertura, como leitura, escrita ou anexação.

<details>
<summary>🔍 Exemplo de abertura de arquivo</summary>

```ruby
# Abrir um arquivo para leitura
file = File.open('example.txt', 'r')
puts file.read
file.close

# Abrir usando blocos (fechar automático)
File.open('example.txt', 'r') do |file|
  puts file.read
end
```

</details>

---

### 📖 Leitura de Arquivos Texto

Após abrir um arquivo, use `read`, `readline` ou `readlines` para ler o conteúdo.

<details>
<summary>🔍 Exemplo de leitura de arquivo</summary>

```ruby
# Lê o arquivo inteiro
File.open('example.txt', 'r') do |file|
  puts file.read
end

# Lê linha por linha
File.foreach('example.txt') do |line|
  puts line
end

# Lê várias linhas
File.open('example.txt', 'r') do |file|
  puts file.readlines
end
```

</details>

---

### 🖊️ Escrita e Anexação de Arquivos

Ruby facilita a escrita e adição de conteúdo em arquivos.

<details>
<summary>🔍 Exemplo de escrita e anexação</summary>

```ruby
# Sobrescreve o arquivo
File.open('example.txt', 'w') do |file|
  file.puts "Novo conteúdo"
end

# Adiciona ao final do arquivo
File.open('example.txt', 'a') do |file|
  file.puts "Conteúdo adicionado"
end
```

</details>

---

### 🗂️ Manipulação de Caminhos e Arquivos

Para trabalhar com caminhos de arquivo, Ruby oferece vários métodos úteis.

<details>
<summary>🔍 Exemplo de manipulação de caminhos</summary>

```ruby
# Verificar se o arquivo existe
if File.exist?('example.txt')
  puts "O arquivo existe"
end

# Renomear o arquivo
File.rename('old_name.txt', 'new_name.txt')

# Deletar o arquivo
File.delete('example.txt') if File.exist?('example.txt')
```

</details>

---

### 🗃️ Leitura e Escrita de Arquivos Binários

Para manipular arquivos binários, abra no modo binário.

<details>
<summary>🔍 Exemplo de leitura binária</summary>

```ruby
# Abrir arquivo binário
File.open('example.bin', 'rb') do |file|
  content = file.read
  puts content.unpack('H*')
end
```

</details>

---

### 🔧 Streams e Arquivos Grandes

Quando você precisa processar grandes arquivos, o uso de streams pode ser eficiente.

<details>
<summary>🔍 Exemplo de streams</summary>

```ruby
# Processar um arquivo grande linha por linha
File.foreach('large_file.txt') do |line|
  puts line
end
```

</details>

---

### 📊 Informações e Metadados de Arquivos

Você pode acessar várias informações sobre um arquivo, como o tamanho e a data de modificação.

<details>
<summary>🔍 Exemplo de metadados de arquivo</summary>

```ruby
# Tamanho do arquivo
puts File.size('example.txt')

# Última modificação
puts File.mtime('example.txt')
```

</details>

---

### 🛠️ Uso de `FileUtils` para Operações Avançadas

A biblioteca `FileUtils` permite realizar cópias, mover arquivos, e outras operações avançadas.

<details>
<summary>🔍 Exemplo de uso de `FileUtils`</summary>

```ruby
require 'fileutils'

# Copiar um arquivo
FileUtils.cp('source.txt', 'destination.txt')

# Mover um arquivo
FileUtils.mv('file.txt', 'new_directory/file.txt')
```

</details>

---

### 🔐 Permissões de Arquivo

Você pode alterar as permissões de um arquivo com `chmod`.

<details>
<summary>🔍 Exemplo de alteração de permissões</summary>

```ruby
# Alterar as permissões de leitura/escrita
File.chmod(0644, 'example.txt')
```

</details>

---

## 🛠️ Como usar este repositório

Este README contém exemplos detalhados para manipulação de arquivos em Ruby. Explore as seções para aprender como usar diferentes técnicas de leitura, escrita e manipulação de arquivos em seus projetos.

## 🤝 Contribuições
