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


class MeuObjeto
  def method_missing(method_name, *args)
    puts "Você tentou chamar o método: #{method_name} com os argumentos: #{args.inspect}"
  end
end

obj = MeuObjeto.new
obj.qualquer_metodo("argumento1", "argumento2")

class Fish
  def method_missing(method_name)
    puts "fish dont have #{method_name} behavior"    
  end

  def swim
    puts 'fish is swimming'
  end
end


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
 
  def outra_coisa
    puts "outra coisa = ./method_missing.rb:42:in `method_missing': undefined method `outra_coisa' for an instance of MeuObjeto (NoMethodError) from ./method_missing.rb:53:in `<main>'"
  end
end



obj = MeuObjeto.new
puts obj.saudacao  # Saída: Olá! Como posso ajudar?
puts obj.outra_coisa # Levanta uma exceção NoMethodError




fish = Fish.new
fish.swim
fish.walk
fish.run