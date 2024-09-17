<img align="margin-right: 100px;" src="https://upload.wikimedia.org/wikipedia/commons/1/13/Programming_Paradigms.svg" width="60" height="60">[![Typing SVG](https://readme-typing-svg.herokuapp.com?font=Oswald&weight=500&size=30&pause=1000&color=000000&center=true&vCenter=true&width=435&lines=Heran%C3%A7a+e+Polimorfismo+em+Ruby)](https://git.io/typing-svg)<img align="margin-left: 100px;" src="https://upload.wikimedia.org/wikipedia/commons/1/13/Programming_Paradigms.svg" width="60" height="60">

<h2>🔍 Herança e Polimorfismo</h2>

Herança e polimorfismo são conceitos fundamentais em programação orientada a objetos que permitem a criação de hierarquias de classes e o uso de métodos de forma flexível.

---

### 🧬 Herança

Herança permite que uma classe herde métodos e atributos de outra classe. A classe que herda é chamada de **classe filha** ou **subclasse**, e a classe da qual ela herda é chamada de **classe pai** ou **superclasse**.

```ruby
class Animal
  def dular
    puts "toing! toing! toing! toing!"
  end

  def dormi
    puts "Zzzzzz"
  end
end

class Cachorro < Animal
  def latir
    puts "au au"
  end
end

class Gato < Animal
  def miar
    puts "meow meow"
  end
end

cachorro = Cachorro.new
cachorro.latir
cachorro.dormi

gato = Gato.new
gato.miar
gato.dormi

=begin
Resultado da chamada do objeto cachorro:
au au
Zzzzzz

Resultado da chamada do objeto gato:
meow meow
Zzzzzz
=end
```

- **Classe Animal**: Define os métodos `dular` e `dormi`.
- **Classe Cachorro** e **Classe Gato**: Herdam os métodos da classe `Animal` e adicionam seus próprios métodos (`latir` e `miar`, respectivamente).
- **Resultado**: Ambas as classes `Cachorro` e `Gato` podem usar o método `dormi`, além de seus próprios métodos específicos.

---

### 🖥️ Exemplo de Classe

```ruby
class Computer
  def turn_on
    'turn on the computer'
  end

  def shutdown
    'shutdown the computer'
  end
end

computer = Computer.new
puts computer.turn_on
```

- **Classe Computer**: Define métodos para ligar e desligar o computador.
- **Uso**: O método `.new` cria um objeto e permite chamar métodos definidos na classe.

---

### 🔄 Polimorfismo

Polimorfismo permite que diferentes classes implementem métodos com o mesmo nome, mas com comportamentos diferentes. Isso é útil quando uma classe filha substitui um método da classe pai para fornecer uma implementação específica.

```ruby
class Instrumento
  def escrever
    puts "Escrevendo ..."
  end
end

class Teclado < Instrumento
end

class Lapis < Instrumento
  def escrever
    puts "Escrevendo a Lapis"
  end
end

class Caneta < Instrumento
  def escrever
    puts "Escrevendo a Caneta"
  end
end

teclado = Teclado.new
lapis = Lapis.new
caneta = Caneta.new

puts "Lápis:", lapis.escrever
puts "Caneta:", caneta.escrever
puts "Teclado:", teclado.escrever
```

- **Classe Instrumento**: Define o método `escrever`.
- **Classes Teclado, Lapis e Caneta**: Cada uma implementa seu próprio método `escrever`, substituindo o método da classe `Instrumento`.
- **Resultado**: Dependendo do objeto, o método `escrever` tem comportamentos distintos.

- **Uso do `super`**: Permite chamar o método da classe pai a partir da classe filha, se necessário.

---

## 📜 Como Usar Este Guia

Este README fornece uma visão geral dos conceitos de herança e polimorfismo em Ruby. Compreender esses conceitos é crucial para criar uma estrutura de código mais organizada e reutilizável. Explore os exemplos para ver como esses conceitos são aplicados na prática.

## 🤝 Contribuições

Contribuições são bem-vindas! Se você tem sugestões de melhorias ou novos exemplos, sinta-se à vontade para abrir uma *pull request*.