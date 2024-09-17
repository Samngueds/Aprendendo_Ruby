<img align="margin-right: 100px;" src="https://static.wikia.nocookie.net/tibia/images/a/a9/Giant_Ruby.gif/revision/latest?cb=20181107134532&path-prefix=en&format=original" width="60" height="60">[![Typing SVG](https://readme-typing-svg.herokuapp.com?font=Oswald&weight=500&size=30&pause=1000&color=C00F0F&center=true&vCenter=true&width=435&lines=method_missing+em+Ruby)](https://git.io/typing-svg)<img align="margin-left: 100px;" src="https://static.wikia.nocookie.net/tibia/images/a/a9/Giant_Ruby.gif/revision/latest?cb=20181107134532&path-prefix=en&format=original" width="60" height="60">

<h2>🛠️ `method_missing` em Ruby</h2>

**`method_missing`** é um método especial em Ruby que permite a interceptação de chamadas de métodos que não estão definidos na classe do objeto. Quando um método é chamado e não existe, o Ruby invoca automaticamente `method_missing`, permitindo que você defina um comportamento customizado para essas chamadas.

A seguir, apresentamos uma visão geral de como utilizar `method_missing`, exemplos práticos e algumas boas práticas.

---

### 📌 Definindo o Método `method_missing`

Para utilizar `method_missing`, você deve sobrescrever este método na sua classe. O método recebe dois parâmetros principais:

1. O nome do método chamado (`method_name`).
2. Os argumentos passados para o método chamado (`*args`).

<details>
<summary>🔍 Exemplo básico</summary>

```ruby
class MeuObjeto
  def method_missing(method_name, *args)
    puts "Você tentou chamar o método: #{method_name} com os argumentos: #{args.inspect}"
  end
end

obj = MeuObjeto.new
obj.qualquer_metodo("argumento1", "argumento2")
```

Saída esperada:

```
Você tentou chamar o método: qualquer_metodo com os argumentos: ["argumento1", "argumento2"]
```

</details>

---

### 🧩 Usos Comuns

**1. Implementar Métodos Dinâmicos:**

Você pode usar `method_missing` para criar métodos dinamicamente com base no nome do método chamado.

<details>
<summary>🔍 Exemplo de métodos dinâmicos</summary>

```ruby
class Calculadora
  def method_missing(method_name, *args)
    if method_name.to_s =~ /^soma_(\d+)_e_(\d+)$/
      a = $1.to_i
      b = $2.to_i
      a + b
    else
      super
    end
  end
end

calc = Calculadora.new
puts calc.soma_3_e_4  # Saída: 7
```

</details>

**2. Mensagens de Erro Personalizadas:**

Você pode fornecer mensagens de erro personalizadas quando um método inexistente é chamado.

<details>
<summary>🔍 Exemplo de mensagem de erro personalizada</summary>

```ruby
class MeuObjeto
  def method_missing(method_name, *args)
    puts "Método #{method_name} não encontrado. Verifique o nome do método e tente novamente."
  end
end

obj = MeuObjeto.new
obj.metodo_inexistente
```

Saída esperada:

```
Método metodo_inexistente não encontrado. Verifique o nome do método e tente novamente.
```

</details>

---

### 🧩 Boas Práticas

**1. Sempre Chame `super`:**

Se você não tratar o método chamado no `method_missing`, deve chamar `super` para permitir que a classe pai ou a implementação padrão trate a chamada.

```ruby
def method_missing(method_name, *args)
  super
end
```

**2. Evite Usar Excessivamente:**

O uso excessivo de `method_missing` pode tornar o código difícil de entender e depurar. Use-o com cuidado e documente bem o comportamento esperado.

**3. Implementar `respond_to_missing?`:**

Para que o método `respond_to?` funcione corretamente, você deve implementar `respond_to_missing?` quando usar `method_missing`.

```ruby
def respond_to_missing?(method_name, include_private = false)
  true # ou uma lógica que verifica se o método deve ser tratado
end
```

---

### Exemplo Completo

```ruby
class MeuObjeto
  def method_missing(method_name, *args)
    if method_name.to_s == "saudacao"
      puts "Olá! Como posso ajudar?"
    else
      super
    end
  end

  def respond_to_missing?(method_name, include_private = false)
    method_name.to_s == "saudacao" || super
  end
end

obj = MeuObjeto.new
puts obj.saudacao  # Saída: Olá! Como posso ajudar?
puts obj.outra_coisa  # Levanta uma exceção NoMethodError
```

---

## 🛠️ Como usar este repositório

Este README contém informações detalhadas sobre o método `method_missing` em Ruby. Explore as seções acima para aprender mais sobre como utilizar `method_missing` e veja exemplos práticos para entender como implementar este recurso em seus próprios projetos.

## 🤝 Contribuições

Contribuições são sempre bem-vindas! Se você tem sugestões de melhorias ou quer adicionar novos exemplos, sinta-se à vontade para abrir uma *pull request*.
