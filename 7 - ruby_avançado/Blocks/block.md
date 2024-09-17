<img align="margin-right: 100px;" src="https://static.wikia.nocookie.net/tibia/images/a/a9/Giant_Ruby.gif/revision/latest?cb=20181107134532&path-prefix=en&format=original" width="60" height="60">[![Typing SVG](https://readme-typing-svg.herokuapp.com?font=Oswald&weight=500&size=30&pause=1000&color=C00F0F&center=true&vCenter=true&width=435&lines=Blocos+em+Ruby)](https://git.io/typing-svg)<img align="margin-left: 100px;" src="https://static.wikia.nocookie.net/tibia/images/a/a9/Giant_Ruby.gif/revision/latest?cb=20181107134532&path-prefix=en&format=original" width="60" height="60">

<h2>🔲 Blocos em Ruby</h2>

Em Ruby, blocos são uma forma de função anônima que pode ser passada como argumento para métodos. Eles são definidos entre chaves (`{}`) ou usando `do..end`. Blocos são úteis para executar um pedaço de código repetidamente e podem receber parâmetros.

---

### 🧩 Bloco Simples

Blocos simples são definidos entre chaves (`{}`) e são frequentemente usados com métodos iterativos como `times`.

<details>
<summary>🔍 Exemplo de bloco simples</summary>

```ruby
puts "<------- Bloco Simples ------->"
5.times { puts "exec the block" }
```

</details>

---

### 🔢 Bloco em Função Predefinida

Blocos podem ser passados para funções predefinidas como `each` para manipular elementos de um array ou hash.

<details>
<summary>🔍 Exemplo de bloco em função predefinida</summary>

```ruby
puts "<------- Bloco em Função Predefinida ------->"
sum = 0
numbers = [1, 4, 5, 10]
numbers.each { |number| sum += number }
puts sum
```

</details>

---

### 📜 Bloco de Múltiplas Linhas

Blocos podem ser definidos com múltiplas linhas usando `do..end`. Isso é útil quando você precisa de mais complexidade dentro do bloco.

<details>
<summary>🔍 Exemplo de bloco de múltiplas linhas</summary>

```ruby
puts "<------- Bloco de Múltiplas Linhas ------->"
foo = {2 => 3, 4 => 5}

foo.each do |key, value|
  puts "key = #{key}"
  puts "value = #{value}"
  puts "key * value = #{key * value}"
end
```

</details>

---

### 🧩 Blocos em Métodos

Você pode definir métodos que aceitam blocos. Use `yield` para chamar o bloco dentro do método.

<details>
<summary>🔍 Exemplo de blocos em métodos</summary>

```ruby
puts "<------- Blocos em Métodos ------->"

def foo
  yield
  yield
end

foo { puts "executando o bloco" }
```

</details>

---

### 🚦 Verificando Blocos em Métodos

É possível verificar se um bloco foi passado para um método usando `block_given?`.

<details>
<summary>🔍 Exemplo de verificação de bloco</summary>

```ruby
puts "<------- Verificação de Bloco ------->"

def foo2
  if block_given?
    yield
  else
    puts "sem parâmetros do tipo bloco"
  end
end

foo2 { puts "com parâmetros do tipo bloco passados" }
```

</details>

---

### 📦 Passando Blocos para Variáveis

Blocos podem ser passados como variáveis usando o operador `&`.

<details>
<summary>🔍 Exemplo de passagem de bloco para variável</summary>

```ruby
puts "<------- Blocos em Variáveis ------->"

def pc(off, &block)
  @off = off
  block.call
end

pc('desligando') { puts "okay, #{@off} o Pc" }
```

</details>

---

### 🔄 Blocos com Várias Linhas em Métodos

Você pode passar blocos com várias linhas para métodos e chamá-los com parâmetros.

<details>
<summary>🔍 Exemplo de blocos com várias linhas</summary>

```ruby
puts "<------- Blocos com Várias Linhas ------->"

def foo(numbers, &block)
  if block_given?
    numbers.each do |key, value|
      block.call(key, value)
    end
  end
end

numbers = {2 => 2, 4 => 3, 3 => 4}

foo(numbers) do |key, value|
  puts "#{key} * #{value} = #{key * value}"
  puts "#{key} + #{value} = #{key + value}"
  puts "---"
end
```

</details>

---

## 🛠️ Como usar este repositório

Este README contém informações detalhadas sobre o uso de blocos em Ruby. Explore as seções acima para aprender sobre diferentes tipos de blocos e como usá-los em seus métodos. Experimente os exemplos para se familiarizar com o conceito de blocos e sua aplicação prática.

## 🤝 Contribuições

Contribuições são bem-vindas! Se você tem sugestões de melhorias ou novos exemplos, sinta-se à vontade para abrir uma *pull request*.
