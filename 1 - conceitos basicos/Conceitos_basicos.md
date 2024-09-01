![ruby-gif](https://static.wikia.nocookie.net/tibia/images/a/a9/Giant_Ruby.gif/revision/latest?cb=20181107134532&path-prefix=en&format=original) Conceitos Básicos em Ruby ![ruby-gif](https://static.wikia.nocookie.net/tibia/images/a/a9/Giant_Ruby.gif/revision/latest?cb=20181107134532&path-prefix=en&format=original)

<details>
<summary>📥 Entrada e Saída</summary>

### Saída (Output)
Utiliza o método `puts` para imprimir informações no console.

```ruby
puts 'Olá, Mundo!'
```

### Entrada (Input)
Utiliza o método `gets` para capturar a entrada do usuário. O método `chomp` é usado para remover o caractere de nova linha do final da entrada.

```ruby
print 'Digite seu nome: '
nome = gets.chomp
puts 'Olá, ' + nome + '!'
```

</details>

<details>
<summary>📊 Tipos de Dados</summary>

### Integer
Representa números inteiros (positivos, negativos e zero).

```ruby
int = 10
puts int.class  # Output: Integer
```

### Boolean
Representa valores lógicos `true` ou `false`.

```ruby
boo = true
puts boo.class  # Output: TrueClass
```

### Float
Representa números reais com ponto flutuante.

```ruby
float_num = 10.5
puts float_num.class  # Output: Float
```

### Array
Uma lista ordenada de dados em um único objeto. Arrays são definidos com colchetes `[]`.

```ruby
array = ['0_position', '1_position', '2_position', '3_position']
puts array.class  # Output: Array
```

### Symbol
Um tipo de dado semelhante a String, mas imutável. Símbolos ocupam o mesmo espaço na memória e são definidos com dois pontos `:`.

```ruby
simbolo = :simbolo
puts simbolo.class  # Output: Symbol
```

### Hash
Representa uma coleção de pares chave-valor. Hashes são definidos com chaves `{}`.

```ruby
hash = {hash1: '.png', hash2: '.jpeg'}
puts hash.class  # Output: Hash
```

</details>

<details>
<summary>🧮 Operadores</summary>

### Soma

```ruby
x = 5
y = 3
soma = x + y
puts soma  # Output: 8
```

### Subtração

```ruby
sub = x - y
puts sub  # Output: 2
```

### Multiplicação

```ruby
mult = x * y
puts mult  # Output: 15
```

### Divisão

```ruby
div = x / y
puts div  # Output: 1
```

### Módulo (resto da divisão)

```ruby
modulo = x % y
puts modulo  # Output: 2
```

### Expoente (potência)

```ruby
expoente = x ** y
puts expoente  # Output: 125
```

</details>

<details>
<summary>🔍 Valores Especiais e Comparações</summary>

Valores especiais são objetos e são utilizados para representar estados lógicos e condições.

#### Valores Especiais

- `nil` representa a ausência de valor.
- `true` representa verdadeiro.
- `false` representa falso.

```ruby
nil.class #=> NilClass
true.class #=> TrueClass
false.class #=> FalseClass
```

#### Comparações

```ruby
1 == 1 #=> true
2 == 1 #=> false

1 != 1 #=> false
2 != 1 #=> true
!true  #=> false
!false #=> true

!nil   #=> true
!false #=> true
!0     #=> false

1 < 10 #=> true
1 > 10 #=> false
2 <= 2 #=> true
2 >= 2 #=> true
```

</details>
