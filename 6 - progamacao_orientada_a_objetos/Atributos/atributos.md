<img align="margin-right: 100px;" src="https://upload.wikimedia.org/wikipedia/commons/1/13/Programming_Paradigms.svg" width="60" height="60">[![Typing SVG](https://readme-typing-svg.herokuapp.com?font=Oswald&weight=500&size=30&pause=1000&color=000000&center=true&vCenter=true&width=435&lines=Atributos+em+Ruby)](https://git.io/typing-svg)<img align="margin-left: 100px;" src="https://upload.wikimedia.org/wikipedia/commons/1/13/Programming_Paradigms.svg" width="60" height="60">

<h2>🛠️ Atributos (ou Variáveis de Instância)</h2>

Atributos em Ruby, também conhecidos como variáveis de instância, são usados para armazenar dados específicos de uma instância de classe. Eles são sempre privados e começam com o símbolo `@`. Acessar e modificar esses atributos é feito por meio de métodos específicos dentro da classe.

---

### 📦 Exemplo Básico de Atributos

Vamos considerar a seguinte classe `Dog`:

```ruby
class Dog
  def name
    @name
  end

  def name=(name)
    @name = name
  end
end

dog = Dog.new
dog.name = 'Marlon'
puts dog.name
```

- **Método `name`**: Este método é usado para ler o valor do atributo `@name`.
- **Método `name=`**: Este método é usado para atribuir um valor ao atributo `@name`.

Neste exemplo, `dog.name = 'Marlon'` define o nome do cachorro, e `puts dog.name` imprime o nome definido.

---

### 🔧 Usando `attr_accessor` para Simplificar

Você pode simplificar a criação de métodos de leitura e escrita para atributos usando o `attr_accessor`. Veja o exemplo com a classe `Cat`:

```ruby
class Cat
  attr_accessor :name1, :age
end

cat = Cat.new
cat.name1 = 'Layla'
puts cat.name1

cat.age = '3 meses'
puts cat.age
```

- **`attr_accessor`**: Este método cria automaticamente os métodos de leitura (`name1`) e escrita (`name1=`) para o atributo `name1`, assim como para `age`. 

### 🔍 Explicações

- **Variáveis de Instância**: Começam com `@` e são privadas, ou seja, não podem ser acessadas diretamente fora da classe. São usadas para armazenar o estado de um objeto.
- **Métodos de Leitura e Escrita**: Permitem o acesso e a modificação das variáveis de instância. Métodos de leitura retornam o valor da variável, enquanto métodos de escrita definem o valor.

---

## 📜 Como Usar Este Guia

Este README fornece uma introdução ao uso de atributos em Ruby. Entender como trabalhar com variáveis de instância e métodos de leitura e escrita é crucial para o desenvolvimento de classes e objetos em Ruby. Explore os exemplos para ver como definir e manipular atributos em suas próprias classes.

## 🤝 Contribuições

Contribuições são bem-vindas! Se você tem sugestões de melhorias ou novos exemplos, sinta-se à vontade para abrir uma *pull request*.