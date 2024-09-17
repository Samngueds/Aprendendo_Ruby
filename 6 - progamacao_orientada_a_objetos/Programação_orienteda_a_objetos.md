<img align="margin-right: 100px;" src="https://upload.wikimedia.org/wikipedia/commons/1/13/Programming_Paradigms.svg" width="60" height="60">[![Typing SVG](https://readme-typing-svg.herokuapp.com?font=Oswald&weight=500&size=30&pause=1000&color=000000&center=true&vCenter=true&width=435&lines=Programação+Orientada+a+Objetos+%28POO%29)](https://git.io/typing-svg)<img align="margin-left: 100px;" src="https://upload.wikimedia.org/wikipedia/commons/1/13/Programming_Paradigms.svg" width="60" height="60">

<h2>🌟 Programação Orientada a Objetos (POO)</h2>

A Programação Orientada a Objetos (POO) é um paradigma de programação criado para lidar com softwares grandes e complexos. É um conceito seguido não só pelo Ruby, mas também por várias outras linguagens de programação como Java, Python, C++, entre outras.

A POO possui 4 pilares principais:

---

### 📚 1. Abstração

Abstração é a ação de abstrair uma entidade do mundo real e transformá-la em uma classe. Pense em uma classe como uma "planta" que define um objeto.

**Exemplo:**
```ruby
class Carro
  attr_accessor :marca, :modelo, :ano

  def ligar
    puts "O carro está ligado!"
  end
end
```
Aqui, `Carro` é a classe que abstrai a ideia de um carro real.

---

### 🔒 2. Encapsulamento

Encapsulamento é o ato de dividir um programa em várias partes, tornando-o flexível e fácil de modificar. Ele protege os dados e métodos da classe de acesso externo direto.

**Exemplo:**
```ruby
class ContaBancaria
  def initialize(saldo)
    @saldo = saldo
  end

  def depositar(valor)
    @saldo += valor
  end

  def saldo
    @saldo
  end
end
```
Aqui, o saldo é encapsulado e só pode ser modificado através dos métodos `depositar` e `saldo`.

---

### 🧬 3. Herança

Herança é a habilidade de criar uma nova classe com as características de uma classe existente. Ela promove o reuso e reaproveitamento de código.

**Exemplo:**
```ruby
class Veiculo
  def mover
    puts "O veículo está se movendo!"
  end
end

class Carro < Veiculo
  def ligar
    puts "O carro está ligado!"
  end
end
```
Aqui, `Carro` herda o método `mover` da classe `Veiculo`.

---

### 🔄 4. Polimorfismo

Polimorfismo é a capacidade de utilizar um método de diferentes formas para diferentes objetos. Permite que diferentes classes implementem o mesmo método de maneiras específicas.

**Exemplo:**
```ruby
class Animal
  def fazer_som
    puts "O animal faz um som."
  end
end

class Cachorro < Animal
  def fazer_som
    puts "O cachorro late."
  end
end

class Gato < Animal
  def fazer_som
    puts "O gato mia."
  end
end

animais = [Cachorro.new, Gato.new]
animais.each { |animal| animal.fazer_som }
```
Aqui, o método `fazer_som` é implementado de forma diferente para `Cachorro` e `Gato`.

---

### 🏗️ Trabalhando com Classes e Objetos

- **Classe**: É como uma planta ou um molde para criar objetos.
- **Objeto**: É uma instância da classe, representando uma entidade do mundo real.

**Exemplo de Classe e Objeto:**
```ruby
class Cachorro
  attr_accessor :raca, :peso, :idade

  def latir
    puts "Au au!"
  end
end

meu_cachorro = Cachorro.new
meu_cachorro.raca = "Pastor Alemão"
meu_cachorro.peso = 35
meu_cachorro.idade = 3
meu_cachorro.latir
```

---

### 🔄 Regras e Conceitos Adicionais

#### 1. `require`

O `require` é utilizado para carregar arquivos Ruby externos. Pode ser usado para incluir classes e módulos definidos em outros arquivos.

**Exemplo:**
```ruby
require './carro'
```

#### 2. Escopo das Variáveis

- **Variável Local**: Declara-se com uma letra minúscula ou sublinhado. Só é acessível onde foi criada.
- **Variável Global**: Declarada com o prefixo `$`. Acessível em qualquer lugar, mas seu uso é desencorajado.
- **Variável de Classe**: Declarada com prefixo `@@`. Compartilhada entre todas as instâncias da classe.
- **Variável de Instância**: Começa com o símbolo `@`. Cada instância tem seu próprio valor.

**Exemplo:**
```ruby
class Exemplo
  @@variavel_de_classe = "Classe"
  @variavel_de_instancia = "Instância"
  $variavel_global = "Global"

  def mostrar
    puts @@variavel_de_classe
    puts @variavel_de_instancia
    puts $variavel_global
  end
end
```

---

## 🛠️ Como Usar Este Guia

Este README fornece uma introdução aos principais conceitos da Programação Orientada a Objetos (POO) em Ruby, incluindo abstração, encapsulamento, herança e polimorfismo. Explore os exemplos para entender como definir e utilizar classes e objetos, e como aplicar os princípios da POO em seus projetos Ruby.

## 🤝 Contribuições

Contribuições são bem-vindas! Se você tem sugestões de melhorias ou novos exemplos, sinta-se à vontade para abrir uma *pull request*.
