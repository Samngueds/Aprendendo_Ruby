<img align="margin-right: 100px;" src="https://static.wikia.nocookie.net/tibia/images/a/a9/Giant_Ruby.gif/revision/latest?cb=20181107134532&path-prefix=en&format=original" width="60" height="60">[![Typing SVG](https://readme-typing-svg.herokuapp.com?font=Oswald&weight=500&size=30&pause=1000&color=C00F0F&center=true&vCenter=true&width=435&lines=Uso+de+Lambda+em+Ruby)](https://git.io/typing-svg)<img align="margin-left: 100px;" src="https://static.wikia.nocookie.net/tibia/images/a/a9/Giant_Ruby.gif/revision/latest?cb=20181107134532&path-prefix=en&format=original" width="60" height="60">

<h2>🔍 Lambda em Ruby</h2>

Lambda são similares aos blocks em Ruby, mas têm a vantagem de poderem ser armazenadas em variáveis e passadas como argumentos para métodos. 

---

### 🧩 Criando e Usando Lambdas

#### Definindo e Chamando um Lambda

```ruby
fist_lambda = lambda { puts "my first lambda" }
fist_lambda.call
```

- **Descrição**: O lambda é definido usando a palavra-chave `lambda` e pode ser chamado com o método `.call`.

#### Usando a Sintaxe Alternativa

```ruby
second_lambda = -> { puts "my second lambda" }
second_lambda.call
```

- **Descrição**: A sintaxe alternativa `->` pode ser usada para definir lambdas, resultando na mesma funcionalidade.

#### Lambdas com Parâmetros

```ruby
third_lambda = -> (names) { names.each { |name| puts name } }

names = ["joao", "maria", "pedro"]
third_lambda.call(names)
```

- **Descrição**: Lambdas podem receber parâmetros. Neste exemplo, um array de nomes é passado para o lambda, que imprime cada nome.

#### Lambdas de Múltiplas Linhas

```ruby
my_lambda = -> do |numbers|
  index = 0
  puts 'numero atual + Proximo numero'
  numbers.each do |number|
    return if numbers[index] == numbers.last
    puts "(#{numbers[index]}+#{numbers[index + 1]})"
    puts numbers[index] + numbers[index + 1]
    index += 1
  end
end

numbers = [1, 2, 3, 4]
my_lambda.call(numbers)
```

- **Descrição**: Lambdas podem ser definidas com múltiplas linhas e são capazes de realizar operações mais complexas.

#### Usando Lambdas como Argumentos de Métodos

```ruby
def foo(fist_lambda, second_lambda)
  fist_lambda.call
  second_lambda.call
end

fist_lambda = -> { puts "my first lambda" }
second_lambda = -> { puts "my second lambda" }

foo(fist_lambda, second_lambda)
```

- **Descrição**: Lambdas podem ser passadas como argumentos para métodos, facilitando a reutilização de código e a modularidade.

---

## 📜 Como Usar Este Guia

Este README fornece uma visão geral sobre o uso de lambdas em Ruby. Os lambdas são uma ferramenta poderosa para criar blocos de código reutilizáveis e modulares. Explore os exemplos para ver como esses conceitos são aplicados na prática.

## 🤝 Contribuições

Contribuições são bem-vindas! Se você tem sugestões de melhorias ou novos exemplos, sinta-se à vontade para abrir uma *pull request*.
