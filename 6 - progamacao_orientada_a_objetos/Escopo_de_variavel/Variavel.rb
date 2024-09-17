#veja que aqui foi criada uma  classe chamada user:

class User
  @@user_count = 0 # aqui foi definida uma varivel de classe que  so pode ser usada dentro da classe expesifica

  def add(name) # observe que aqui foi definido um metodo, e esse metodo pegue um parametro
    # do tipo string

    @@user_count += 1 # observe que aqui nos fazemos a chamada da variavel passando outro "valor" para ela

    puts "Usuario #{@@user_count}, #{name} adicionado" # aqui  nos imprimimos o paramento/string + a variavel
    # que foi setado la na classe

  end


end

first_user = User.new
first_user.add("jose") # observe que aqui passamos o parametro que foi setado la no metodo

first_user = User.new
first_user.add("maria")

# isso tambem fucionaria com um input : 

# por exemplo: 

first_user = User.new

print "digite o nome do seu usuario: "

first_user.add(gets.chomp)


