<img align="margin-right: 100px;" src="https://static.wikia.nocookie.net/tibia/images/a/a9/Giant_Ruby.gif/revision/latest?cb=20181107134532&path-prefix=en&format=original" width="60" height="60">[![Typing SVG](https://readme-typing-svg.herokuapp.com?font=Oswald&weight=500&size=30&pause=1000&color=C00F0F&center=true&vCenter=true&width=435&lines=Collections+em+Ruby)](https://git.io/typing-svg)<img align="margin-left: 100px;" src="https://static.wikia.nocookie.net/tibia/images/a/a9/Giant_Ruby.gif/revision/latest?cb=20181107134532&path-prefix=en&format=original" width="60" height="60">

<h2>📚 Coleções em Ruby</h2>

Em Ruby, coleções são estruturas de dados que permitem armazenar e manipular conjuntos de valores. Os principais tipos de coleções são arrays e hashes. Aqui você encontrará exemplos de como trabalhar com essas coleções.

---

### 📋 Arrays

Arrays são listas ordenadas de elementos. Aqui estão algumas operações comuns que você pode realizar com arrays:

<details>
<summary>🔍 Operações Básicas com Arrays</summary>

```ruby
# Criando um array vazio
estados = []

# Adicionando elementos ao final do array
estados.push('espirito santo')

# Adicionando elementos em uma posição específica
estados.insert(0, 'acre', 1, 'amapá')

# Acessando elementos pelo índice
puts estados[0] # 'acre'

# Pegando o primeiro e o último elemento do array
puts estados.first # 'acre'
puts estados.last  # 'amapá'

# Contando o número de elementos no array
puts estados.count # 3

# Verificando se o array está vazio
puts estados.empty? # false

# Verificando se um elemento está presente no array
puts estados.include?('acre') # true

# Excluindo elementos
estados.delete_at(2) # Remove o elemento no índice 2
estados.pop          # Remove o último elemento
estados.shift        # Remove o primeiro elemento
```

</details>

---

### 📖 Hashes

Hashes são coleções de pares chave-valor. São semelhantes a arrays, mas você acessa os elementos pelas chaves, não pelos índices.

<details>
<summary>🔍 Operações Básicas com Hashes</summary>

```ruby
# Criando um hash vazio
capitais = Hash.new
# ou
capitais = {}

# Adicionando valores ao hash
capitais[:minas_gerais] = "belo horizonte"

# Verificando todas as chaves e valores
puts capitais.keys   # [:minas_gerais]
puts capitais.values # ["belo horizonte"]

# Deletando um valor do hash
capitais.delete(:minas_gerais)

# Verificando o tamanho do hash
puts capitais.size   # 0

# Verificando se o hash está vazio
puts capitais.empty? # true
```

</details>

---

### 🔁 Iterando sobre Arrays e Hashes

Você pode usar métodos como `.each`, `.map`, e `.select` para iterar sobre arrays e hashes.

<details>
<summary>🔍 Exemplos de Iteração</summary>

```ruby
# Iterando sobre um array
names = ['joao', 'manuel', 'maria']
name = 'leonardo'

names.each do |name|
  puts name
end

# O valor da variável `name` fora do bloco não é alterado
puts name # 'leonardo'

# Iterando sobre um hash
aulas = {'aula 1' => 'liberada', 'aula 2' => 'liberada', 'aula 3' => 'liberada', 'aula 4' => 'liberada'}
aulas.each do |key, value|
  puts "#{key} #{value}"
end

# Usando .map para transformar um array
array = [1, 2, 3, 4]
puts "\nExecutando .map e multiplicando cada item por 2"
new_array = array.map do |a|
  a * 2
end
puts "\nArray original: #{array}"
puts "\nNovo Array: #{new_array}"

# Usando .map! para modificar o array original
puts "\nExecutando .map! e multiplicando cada item por 2"
array.map! do |a|
  a * 2
end
puts "\nArray original após .map!: #{array}"

# Usando .select para filtrar elementos
array = [1, 2, 3, 4, 5, 6, 7, 8]
selection = array.select do |a|
  a >= 4
end
puts "\nSeleção de elementos maiores ou iguais a 4: #{selection}"

# Filtrando chaves e valores em um hash
hash = {0 => 'zero', 1 => 'um', 2 => 'dois', 3 => 'tres'}
puts 'Selecionando chaves com valores menores ou iguais a 0'
selection_key = hash.select do |key, value|
  key <= 0
end
puts selection_key
```

</details>

---

## 🛠️ Como usar este repositório

Este README fornece informações básicas sobre a manipulação de coleções em Ruby. Explore os exemplos acima para aprender a criar, modificar e iterar sobre arrays e hashes. Experimente os exemplos para se familiarizar com a manipulação de dados em Ruby.

## 🤝 Contribuições

Contribuições são bem-vindas! Se você tem sugestões de melhorias ou novos exemplos, sinta-se à vontade para abrir uma *pull request*.
