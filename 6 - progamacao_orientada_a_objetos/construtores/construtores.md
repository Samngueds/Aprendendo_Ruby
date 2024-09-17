<img align="margin-right: 100px;" src="https://upload.wikimedia.org/wikipedia/commons/1/13/Programming_Paradigms.svg" width="60" height="60">[![Typing SVG](https://readme-typing-svg.herokuapp.com?font=Oswald&weight=500&size=30&pause=1000&color=000000&center=true&vCenter=true&width=435&lines=Construtores+em+Ruby)](https://git.io/typing-svg)<img align="margin-left: 100px;" src="https://upload.wikimedia.org/wikipedia/commons/1/13/Programming_Paradigms.svg" width="60" height="60">

<h2>🔧 Construtores</h2>

Em Ruby, o construtor é um método especial chamado `initialize` que é executado sempre que uma nova instância de uma classe é criada. Ele permite que você defina valores iniciais para os atributos de um objeto no momento da sua criação.

---

### 🛠️ Exemplo Básico de Construtor

Aqui está um exemplo simples de como utilizar o método `initialize`:

```ruby
class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def check
    puts "Instância de classe iniciada com os valores:"
    puts "Name = #{@name}"
    puts "Age = #{@age}"
  end
end

person = Person.new('João', 12)
person.check
```

- **Método `initialize`**: Este método é chamado automaticamente quando um novo objeto é criado. Aqui, `@name` e `@age` são inicializados com os valores passados como argumentos para `Person.new`.

---

### 🛠️ Construtor com Entrada do Usuário

Você também pode criar um construtor que solicita entrada do usuário durante a criação do objeto:

```ruby
class Person2
  def initialize
    print "Digite o tipo de dado para name: "
    @input_name = gets.chomp.to_s

    print "Digite o tipo de dado para age: "
    @input_age = gets.chomp.to_i
  end

  def check_input
    puts "Instância de classe iniciada com os valores:"
    puts "Name = #{@input_name}"
    puts "Age = #{@input_age}"
  end
end

person2 = Person2.new
person2.check_input
```

- **Entrada do Usuário**: No exemplo acima, o método `initialize` solicita que o usuário insira valores para `@input_name` e `@input_age` durante a criação da instância.

### 🔍 Explicações

- **Método `initialize`**: É um método especial em Ruby que é automaticamente chamado quando um novo objeto é criado com `.new`. Ele é usado para definir os valores iniciais dos atributos do objeto.
- **Passagem de Argumentos**: Você pode passar argumentos para `initialize` para inicializar atributos com valores específicos no momento da criação do objeto.
- **Entrada do Usuário**: O `initialize` também pode solicitar entrada do usuário, permitindo que o objeto seja configurado com dados fornecidos dinamicamente.

---

## 📜 Como Usar Este Guia

Este README fornece uma visão geral sobre o uso de construtores em Ruby. Entender como definir e utilizar o método `initialize` é essencial para criar e configurar objetos com atributos iniciais adequados. Explore os exemplos para ver como implementar construtores em suas próprias classes.

## 🤝 Contribuições

Contribuições são bem-vindas! Se você tem sugestões de melhorias ou novos exemplos, sinta-se à vontade para abrir uma *pull request*.