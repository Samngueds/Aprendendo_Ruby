# Observe que aqui foi criada uma classe User
# Diferente das variáveis de classe,
# as variáveis de instância NÃO são compartilhadas entre instâncias,
# mas podem ser acessadas por diferentes métodos dentro da mesma instância.

# Variáveis de Instância: Em Ruby, variáveis de instância são prefixadas com @ e são únicas para cada instância de uma classe. 
# Isso significa que, embora possam ser acessadas em diferentes métodos dentro da mesma instância, 
# elas não são compartilhadas entre instâncias diferentes da classe.

# Diferença das Variáveis de Classe: Variáveis de classe, que são prefixadas com @@, 
# são compartilhadas entre todas as instâncias de uma classe. 
# Já as variáveis de instância não são compartilhadas; cada instância da classe tem sua própria cópia.

class User
  def add(name)
    @name = name
    puts "Usuário #{@name}, adicionado"
    hello # aqui chamamos um método
  end

  def hello
    puts "Seja bem-vindo, #{@name}!" # aqui chamamos a variável instanciada em outro método
  end
  # Se o @name não for definido, o código ainda roda, mas o resultado será nil (nulo).
end

user = User.new
user.add("João")
