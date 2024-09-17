<img align="margin-right: 100px;" src="https://static.wikia.nocookie.net/tibia/images/a/a9/Giant_Ruby.gif/revision/latest?cb=20181107134532&path-prefix=en&format=original" width="60" height="60">[![Typing SVG](https://readme-typing-svg.herokuapp.com?font=Oswald&weight=500&size=30&pause=1000&color=C00F0F&center=true&vCenter=true&width=435&lines=Escopo+de+Variáveis+em+Ruby)](https://git.io/typing-svg)<img align="margin-left: 100px;" src="https://static.wikia.nocookie.net/tibia/images/a/a9/Giant_Ruby.gif/revision/latest?cb=20181107134532&path-prefix=en&format=original" width="60" height="60">

<h2>🔍 Escopo de Variáveis</h2>

O escopo de variáveis em Ruby define onde uma variável pode ser acessada dentro do código. Ruby possui diferentes tipos de variáveis com escopos distintos: variáveis globais, de instância, locais e de classe. Cada tipo tem um escopo específico e regras de visibilidade.

---

### 🌐 Variáveis Globais

Variáveis globais são prefixadas com `$` e podem ser acessadas de qualquer lugar no código. No entanto, seu uso é geralmente desencorajado devido ao risco de alterações inesperadas em qualquer parte do código.

```ruby
$global = nil

puts "<---valor da variável antes de ser modificada--->"
puts $global
puts "<------------------------------------------>"

class Bar
  def foo
    $global = 1
    puts "<-----Valor da variável na classe Bar------->"
    puts $global
    puts "<------------------------------------------>"
  end
end

class Baz
  def qux
    $global += 2
    puts "<-----Valor da variável na classe Baz------->"
    puts $global
    puts "<------------------------------------------>"
  end
end

bar = Bar.new
baz = Baz.new

bar.foo
baz.qux

puts "<----último valor setado para a variável---->"
puts $global
puts "<------------------------------------------>"
```

- **Variáveis Globais**: Como `$global`, são acessíveis e modificáveis de qualquer lugar, o que pode dificultar o rastreamento de alterações.

---

### 🏠 Variáveis de Instância

Variáveis de instância são prefixadas com `@` e são únicas para cada instância de uma classe. Elas são acessíveis dentro da mesma instância da classe e não são compartilhadas entre diferentes instâncias.

```ruby
class User
  def add(name)
    @name = name
    puts "Usuário #{@name}, adicionado"
    hello
  end

  def hello
    puts "Seja bem-vindo, #{@name}!"
  end
end

user = User.new
user.add("João")
```

- **Variáveis de Instância**: São acessíveis apenas dentro da mesma instância da classe. Cada objeto possui sua própria cópia.

---

### 🏷️ Variáveis Locais

Variáveis locais são declaradas dentro de métodos ou blocos e são acessíveis apenas dentro do escopo onde foram declaradas.

```ruby
def foo
  local = 'local é acessada apenas dentro desse método'
  puts "<---DENTRO DO MÉTODO--->"
  puts local
  puts "<---------------------->"
end

foo

local = "gps"
puts "<---FORA DO MÉTODO--->"
puts local
puts "<---------------------->"
```

- **Variáveis Locais**: Declaradas com uma letra minúscula e acessíveis apenas dentro do bloco ou método onde são definidas.

---

### 🏢 Variáveis de Classe

Variáveis de classe são prefixadas com `@@` e são compartilhadas entre todas as instâncias de uma classe. Elas são acessíveis em qualquer lugar dentro da classe, mas não fora dela.

```ruby
class User
  @@user_count = 0

  def add(name)
    @@user_count += 1
    puts "Usuário #{@@user_count}, #{name} adicionado"
  end
end

first_user = User.new
first_user.add("José")

second_user = User.new
second_user.add("Maria")

print "Digite o nome do seu usuário: "
third_user = User.new
third_user.add(gets.chomp)
```

- **Variáveis de Classe**: Declaradas com `@@`, são compartilhadas entre todas as instâncias da mesma classe e podem ser usadas para rastrear informações globais da classe.

---

## 📜 Como Usar Este Guia

Este README fornece uma visão geral do escopo de variáveis em Ruby. Entender como e onde variáveis podem ser acessadas e modificadas é crucial para a organização e manutenção do código. Explore os exemplos para ver como cada tipo de variável funciona em diferentes contextos.

## 🤝 Contribuições

Contribuições são bem-vindas! Se você tem sugestões de melhorias ou novos exemplos, sinta-se à vontade para abrir uma *pull request*.
