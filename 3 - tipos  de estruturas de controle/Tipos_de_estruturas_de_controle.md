<img align="margin-right: 100px;" src="https://static.wikia.nocookie.net/tibia/images/a/a9/Giant_Ruby.gif/revision/latest?cb=20181107134532&path-prefix=en&format=original" width="60" height="60">[![Typing SVG](https://readme-typing-svg.herokuapp.com?font=Oswald&weight=500&size=30&pause=1000&color=C00F0F&center=true&vCenter=true&width=435&lines=Estruturas+de+Controle+de+Repetição)](https://git.io/typing-svg)<img align="margin-left: 100px;" src="https://static.wikia.nocookie.net/tibia/images/a/a9/Giant_Ruby.gif/revision/latest?cb=20181107134532&path-prefix=en&format=original" width="60" height="60">

<h2>🔄 Estruturas de Controle de Repetição</h2>

As estruturas de controle de repetição permitem que blocos de código sejam executados múltiplas vezes, de acordo com uma condição ou quantidade definida. Abaixo, estão alguns dos principais tipos de laços de repetição usados em Ruby:

<details>
<summary>📌 for</summary>

### Utilizado para percorrer uma coleção de elementos.

```ruby
frutis = ['maçã', 'uva', 'morango']
count = 1

for fruti in frutis
  puts fruti
end

# ou 

for x in frutis
  puts x
  puts count
  count += 1
end
```
</details>

<details>
<summary>📌 while</summary>

### Repete um bloco de código enquanto a condição for verdadeira.

```ruby
x = 1

while x <= 10
  puts x
  x += 1
end
```
</details>

<details>
<summary>📌 times</summary>

### Executa um bloco de código por um número definido de vezes.

```ruby
10.times do
  puts "Hello"
end
```
</details>

<details>
<summary>📌 loop (do/while)</summary>

### Cria um laço de repetição que só é parado quando uma instrução `break` é verdadeira.

```ruby
count = 1

loop do
  puts count
  break if count == 100
  count += 1
end
```
</details>

## 🛠️ Como usar este repositório

Este arquivo faz parte de uma coleção maior sobre Ruby. Cada seção contém exemplos de código e explicações detalhadas sobre as principais estruturas de controle de repetição. Clique para expandir as seções e ver mais detalhes sobre cada tipo de laço.

## 🤝 Contribuições

Contribuições são bem-vindas! Se você tem sugestões de melhorias ou novos exemplos, sinta-se à vontade para abrir uma *pull request*.
