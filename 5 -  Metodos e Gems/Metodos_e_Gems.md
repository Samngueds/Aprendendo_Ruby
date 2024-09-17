<img align="margin-right: 100px;" src="https://static.wikia.nocookie.net/tibia/images/a/a9/Giant_Ruby.gif/revision/latest?cb=20181107134532&path-prefix=en&format=original" width="60" height="60">[![Typing SVG](https://readme-typing-svg.herokuapp.com?font=Oswald&weight=500&size=30&pause=1000&color=C00F0F&center=true&vCenter=true&width=435&lines=M%C3%A9todos+e+Gems+em+Ruby)](https://git.io/typing-svg)<img align="margin-left: 100px;" src="https://static.wikia.nocookie.net/tibia/images/a/a9/Giant_Ruby.gif/revision/latest?cb=20181107134532&path-prefix=en&format=original" width="60" height="60">

<h2>🔧 Métodos e Gems em Ruby</h2>

Em Ruby, métodos são blocos de código que realizam uma tarefa específica e podem ser reutilizados em diferentes partes do seu código. Gems são pacotes que fornecem funcionalidades adicionais para o seu projeto Ruby, semelhantes às bibliotecas em outras linguagens de programação. Aqui está uma visão geral de como trabalhar com métodos e gems.

---

### 🛠️ Métodos em Ruby

Métodos em Ruby permitem que você defina e execute blocos de código reutilizáveis. Aqui estão alguns exemplos básicos e avançados de como definir e utilizar métodos em Ruby:

<details>
<summary>🔍 Definindo e Usando Métodos</summary>

```ruby
# Definindo um método simples
def saudacao(nome)
  puts "Olá, #{nome}!"
end

# Chamando o método
saudacao("Maria") # Output: Olá, Maria!

# Método com valor de retorno
def soma(a, b)
  a + b
end

# Chamando o método e armazenando o resultado
resultado = soma(5, 3)
puts resultado # Output: 8

# Método com valor padrão para parâmetros
def saudacao(nome = "Visitante")
  puts "Olá, #{nome}!"
end

# Chamando o método com e sem argumento
saudacao # Output: Olá, Visitante!
saudacao("Ana") # Output: Olá, Ana!

# Método com múltiplos parâmetros e uso de blocos
def iterar(valores)
  valores.each do |valor|
    yield valor
  end
end

# Chamando o método com um bloco
iterar([1, 2, 3]) do |valor|
  puts valor
end
```

</details>

---

### 💎 Gems em Ruby

Gems são pacotes que adicionam funcionalidades específicas ao seu projeto Ruby. Elas podem ser usadas para tudo, desde manipulação de dados até desenvolvimento web. Aqui está um guia básico sobre como gerenciar e utilizar gems em Ruby.

<details>
<summary>🔍 Trabalhando com Gems</summary>

```markdown
# Listar Gems Instaladas
Para listar as gems instaladas no seu sistema, use o comando:
```
```sh
gem list
```
```markdown
# Instalar Gems
Para instalar uma gem, você pode usar o comando `gem install`. Por exemplo:
```
```sh
gem install rails
```
```markdown
# Usar Bundler para Gerenciar Gems
O Bundler é uma ferramenta para gerenciar as gems de um projeto Ruby. Primeiro, instale o Bundler se ainda não tiver:
```
```sh
gem install bundler
```
```markdown
# Criar um Gemfile
Crie um arquivo chamado `Gemfile` no diretório raiz do seu projeto. Este arquivo lista todas as gems necessárias para o seu projeto. Exemplo de `Gemfile`:
```
```ruby
source 'https://rubygems.org'

gem 'rails'
gem 'nokogiri'
gem 'puma'
```
```markdown
# Instalar Gems do Gemfile
Depois de criar ou atualizar o `Gemfile`, você pode instalar todas as gems listadas usando o Bundler:
```
```sh
bundle install
```
```markdown
# Atualizar Gems
Para atualizar todas as gems do seu `Gemfile`, use:
```
```sh
bundle update
```
```markdown
# Remover Gems
Para remover uma gem específica do seu projeto, remova-a do `Gemfile` e execute:
```
```sh
bundle install
```
```markdown
# Verificar Versões de Gems
Para verificar a versão de uma gem instalada, use:
```
```sh
gem list [nome_da_gem]
```
```

</details>

---

## 🛠️ Como Usar Este Guia

Este README fornece uma visão geral de como definir e utilizar métodos em Ruby, bem como como gerenciar gems usando o Bundler. Explore os exemplos e siga as instruções para aprender a trabalhar com métodos e adicionar funcionalidades ao seu projeto Ruby usando gems.

## 🤝 Contribuições

Contribuições são bem-vindas! Se você tem sugestões de melhorias ou novos exemplos, sinta-se à vontade para abrir uma *pull request*.
