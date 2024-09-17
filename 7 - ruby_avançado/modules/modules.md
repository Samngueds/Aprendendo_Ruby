<img align="margin-right: 100px;" src="https://static.wikia.nocookie.net/tibia/images/a/a9/Giant_Ruby.gif/revision/latest?cb=20181107134532&path-prefix=en&format=original" width="60" height="60">[![Typing SVG](https://readme-typing-svg.herokuapp.com?font=Oswald&weight=500&size=30&pause=1000&color=C00F0F&center=true&vCenter=true&width=435&lines=Uso+de+M%C3%B3dulos+em+Ruby)](https://git.io/typing-svg)<img align="margin-left: 100px;" src="https://static.wikia.nocookie.net/tibia/images/a/a9/Giant_Ruby.gif/revision/latest?cb=20181107134532&path-prefix=en&format=original" width="60" height="60">

<h2>🔍 Módulos em Ruby</h2>

Módulos em Ruby têm duas funções principais: namespaces e mixins. Eles permitem organizar o código de maneira eficiente e adicionar funcionalidades a classes de forma modular.

---

### 🗂 Namespaces

Namespaces são usados para agrupar classes, constantes e outros módulos relacionados. Eles ajudam a organizar o código e evitar conflitos de nomes.

```ruby
# Definimos o módulo ReverseWorld, que age como um namespace
module ReverseWorld
  def self.puts(text)
    print text.reverse.to_s
  end
end

# Definimos o módulo NormalWorld, que age como um namespace
module NormalWorld
  def self.puts(text)
    print text
  end
end

# Chamamos o método puts do módulo ReverseWorld
# Isso imprimirá a string "O resultado é" invertida
ReverseWorld::puts "O resultado é"

# Chamamos o método puts do módulo NormalWorld
# Isso imprimirá a string " O resultado é" normalmente
NormalWorld::puts " O resultado é"
```

- **Descrição**: O módulo `ReverseWorld` inverte a string antes de imprimi-la, enquanto o módulo `NormalWorld` imprime a string normalmente. Ambos os módulos são usados para demonstrar a funcionalidade de namespaces.

---

### 🔧 Mixins

Mixins permitem adicionar funcionalidades extras a classes. Eles são definidos como módulos e podem ser incluídos em qualquer classe usando o método `include`.

```ruby
# Definimos um módulo com um método de impressão decorada
module ImpressaoDecorada
  def imprimir(text)
    decoracao = '@' * 100 # Multiplica o caractere '@'
    puts decoracao
    puts text
    puts decoracao
  end
end

# Definimos módulos para diferentes tipos de golpes
module Pernas
  include ImpressaoDecorada

  def chute_frontal
    imprimir 'chute Frontal'
  end

  def chute_lateral
    imprimir 'chute lateral'
  end
end

module Bracos
  include ImpressaoDecorada

  def jab_de_direita
    imprimir 'jab de direita'
  end

  def jab_de_esquerda
    imprimir 'jab de esquerda'
  end
end

module Golpes
  include ImpressaoDecorada

  def rasteira
    imprimir 'rasteira'
  end

  def voadora
    imprimir 'voadora'
  end

  def gancho
    imprimir 'gancho'
  end
end

# Usamos os módulos como mixins em classes
class LutadorX
  include Pernas
  include Bracos
  include Golpes
end

class LutadorY
  include Pernas
  include Bracos
  include Golpes
end

# Criamos instâncias e chamamos métodos
lutadorx = LutadorX.new
lutadorx.voadora
lutadorx.rasteira

lutadory = LutadorY.new
lutadory.jab_de_direita
lutadory.jab_de_esquerda
```

- **Descrição**: O módulo `ImpressaoDecorada` é incluído em outros módulos (`Pernas`, `Bracos`, `Golpes`), adicionando o método `imprimir`. Esses módulos são então incluídos em classes (`LutadorX` e `LutadorY`), que podem usar os métodos definidos em todos os módulos incluídos.

---

## 📜 Como Usar Este Guia

Este README fornece uma visão geral sobre como usar módulos em Ruby para organizar código e adicionar funcionalidades. Explore os exemplos para entender como namespaces e mixins funcionam e como podem ser aplicados em seu código.

## 🤝 Contribuições

Contribuições são bem-vindas! Se você tem sugestões de melhorias ou novos exemplos, sinta-se à vontade para abrir uma *pull request*.
