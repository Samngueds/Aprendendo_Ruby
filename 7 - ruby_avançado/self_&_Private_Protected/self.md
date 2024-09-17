<img align="margin-right: 100px;" src="https://static.wikia.nocookie.net/tibia/images/a/a9/Giant_Ruby.gif/revision/latest?cb=20181107134532&path-prefix=en&format=original" width="60" height="60">[![Typing SVG](https://readme-typing-svg.herokuapp.com?font=Oswald&weight=500&size=30&pause=1000&color=C00F0F&center=true&vCenter=true&width=435&lines=Self,+Private+and+Protected+em+Ruby)](https://git.io/typing-svg)<img align="margin-left: 100px;" src="https://static.wikia.nocookie.net/tibia/images/a/a9/Giant_Ruby.gif/revision/latest?cb=20181107134532&path-prefix=en&format=original" width="60" height="60">

<h2>🔍 `Self`, `Private` e `Protected` em Ruby</h2>

Neste README, exploramos conceitos importantes da metaprogramação e controle de acesso em Ruby, como **`Self`**, **`Private`** e **`Protected`**. Esses conceitos são fundamentais para entender como os métodos e classes funcionam em Ruby e como controlar o acesso aos métodos dentro das classes.

---

### 🧠 `Self`

**`self`** é uma referência ao objeto atual no contexto de uma classe ou método. Ele é usado para acessar métodos e variáveis de instância dentro da própria classe ou objeto.

<details>
<summary>🔍 Exemplo de uso de `self`</summary>

```ruby
class Exemplo
  def metodo
    puts self # Referência ao objeto atual
  end
  
  def self.metodo_classe
    puts self # Referência à classe Exemplo
  end
end

obj = Exemplo.new
obj.metodo             # Saída: #<Exemplo:0x00007fd77eac0d40>

puts "\n"

Exemplo.metodo_classe 
puts "Saída: Exemplo , dessa forma tambem não  precisamos instaciar a classe ou objeto"

```

</details>

---

### 🧬 `Private` e `Protected`

Em Ruby, **`private`** e **`protected`** são usados para controlar o acesso a métodos dentro de uma classe. Eles são utilizados para encapsular a funcionalidade e proteger a integridade dos dados.

#### **`Private`**

Métodos marcados como **`private`** só podem ser chamados dentro da própria classe e não podem ser chamados com um receiver explícito.

<details>
<summary>🔍 Exemplo de método `private`</summary>

```ruby
class MinhaClasse
  def metodo_publico
    metodo_privado # Chama o método privado
  end
  
  private
  
  def metodo_privado
    puts "Método privado chamado!"
  end
end

obj = MinhaClasse.new
obj.metodo_publico  # Saída: Método privado chamado!
# obj.metodo_privado # Levanta uma exceção NoMethodError
```

</details>

#### **`Protected`**

Métodos marcados como **`protected`** podem ser chamados por outras instâncias da mesma classe e por subclasses.

<details>
<summary>🔍 Exemplo de método `protected`</summary>

```ruby
class MinhaClasse
  def comparar_outro(outro)
    outro.metodo_protegido # Chama o método protegido do outro objeto
  end
  
  protected
  
  def metodo_protegido
    puts "Método protegido chamado!"
  end
end

obj1 = MinhaClasse.new
obj2 = MinhaClasse.new
obj1.comparar_outro(obj2)  # Saída: Método protegido chamado!
# obj1.metodo_protegido    # Levanta uma exceção NoMethodError
```

</details>

---

## 🛠️ Como usar este repositório

Este README contém informações detalhadas sobre os conceitos de `self`, `private`, e `protected` em Ruby. Explore as seções acima para aprender mais sobre cada conceito e veja exemplos práticos para entender como implementar esses recursos em seus próprios projetos.

## 🤝 Contribuições

Contribuições são sempre bem-vindas! Se você tem sugestões de melhorias ou quer adicionar novos exemplos, sinta-se à vontade para abrir uma *pull request*.
