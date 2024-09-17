
# metodos sao uma forma de reutilizar uma parte de um codigo meio como se fosse uma classe

# metodos podem ser definidos dessa forma:

# def nome_do_metodo

#end

def talk name
  puts "ola como vc esta #{name}?"
end

talk "flavia"

# parametros:

# são informações que nois fornecemos quando chamanos um paramentro

# exemplo:

def talks(fist_name, last_name)
  puts "Olá #{fist_name} #{last_name}, como você esta?"
end

fist_name = "roberta"

last_name = "souza"

talks(fist_name,last_name)
