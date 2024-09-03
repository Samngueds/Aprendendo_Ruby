<img align="margin-right: 100px;" src="https://static.wikia.nocookie.net/tibia/images/a/a9/Giant_Ruby.gif/revision/latest?cb=20181107134532&path-prefix=en&format=original" width="60" height="60">[![Typing SVG](https://readme-typing-svg.herokuapp.com?font=Oswald&weight=500&size=30&pause=1000&color=C00F0F&center=true&vCenter=true&width=435&lines=Estruturas+de+Controle)](https://git.io/typing-svg)<img align="margin-left: 100px;" src="https://static.wikia.nocookie.net/tibia/images/a/a9/Giant_Ruby.gif/revision/latest?cb=20181107134532&path-prefix=en&format=original" width="60" height="60">

<h2>🔍 Estruturas de Controle Condicionais</h2>

Estruturas de controle condicionais são blocos de código que permitem a execução de determinadas instruções com base em uma condição ou conjunto de condições. Essas estruturas avaliam expressões lógicas, que resultam em valores booleanos (`true` ou `false`), e, dependendo do resultado, o programa toma diferentes caminhos de execução.

As principais estruturas de controle condicionais incluem:

1. **`if`**: Executa um bloco de código se a condição for verdadeira.
   
2. **`else`**: Executa um bloco de código alternativo se a condição no `if` for falsa.

3. **`elsif`**: Adiciona mais condições a uma estrutura `if`, permitindo múltiplos testes antes de decidir o bloco de código a ser executado.

4. **`unless`**: Similar ao `if`, mas inverte a lógica; ele executa o bloco de código se a condição for falsa.

5. **`case`**: Avalia uma expressão e executa o bloco de código correspondente ao primeiro caso que combina com o valor da expressão. É útil quando há várias condições a serem verificadas.

Essas estruturas são fundamentais em qualquer linguagem de programação, pois permitem que o programa tome decisões e altere seu comportamento de acordo com as condições encontradas durante a execução.

<details>
<summary>📌 if</summary>

Expressão que verifica se uma condição é verdadeira (`true`), e a partir do resultado determina se as instruções dentro do seu corpo serão ou não executadas.

```ruby
x = 10

if x > 5
  puts "x é maior que 5"
end
```
</details>

<details>
<summary>📌 else</summary>

Informa o que fazer quando a verificação de uma condição `if` for falsa.

```ruby
x = 3

if x > 5
  puts "x é maior que 5"
else
  puts "x não é maior que 5"
end
```
</details>

<details>
<summary>📌 elsif</summary>

Utilizado quando há a necessidade de verificar mais de uma condição em um `if`.

```ruby
x = 5

if x > 5
  puts "x é maior que 5"
elsif x == 5
  puts "x é igual a 5"
else
  puts "x é menor que 5"
end
```
</details>

<details>
<summary>📌 unless</summary>

Enquanto o `if` é executado quando sua condição for verdadeira, o `unless` ocorre de forma contrária, sendo executado apenas quando a condição é falsa.

```ruby
x = 3

unless x > 5
  puts "x não é maior que 5"
end
```
</details>

<details>
<summary>📌 case</summary>

Instrução muito parecida com `if`, mas que se enquadra bem em situações de diversas condições.

```ruby
nota = 'A'

case nota
when 'A'
  puts "Excelente!"
when 'B'
  puts "Bom!"
when 'C'
  puts "Regular!"
else
  puts "Insuficiente!"
end
```
