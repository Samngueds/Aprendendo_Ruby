# Observe que a classe global foi definida como 0 ou nil
# que um valor nulo

#
$global = nil

#aqui damos um print nela
puts "<---valo da varivel antes de ser mudada--->"
puts $global
puts "<----------------------------------------->"

# agora observe  que o valor da variavel goblal foi alterado

class Bar
  def foo
    $global = 1
    puts "<-----Valor da variavel na classe Bar------->"
    puts $global
    puts "<------------------------------------------->"
  end
end

#  agora observe  que o valor da variavel goblal foi novamente alterado

class Baz
  def qux
    $global += 2
    puts "<-----Valor da variavel na classe Baz------->"
    puts $global
    puts "<------------------------------------------->"
  end
end

# agora criamos objetos e vamo fazer a chamada de cada uma dos metodos

bar = Bar.new 
baz = Baz.new

bar.foo
baz.qux

# agora fazemos a chamada final da variavel
# ela vai esta com a ultimo valor que foi setado para ela

puts "<----ultimo valor setado para a varivel---->"
puts $global
puts "<------------------------------------------>"

# como ela podeser facilmente alteradas de qualquer lugar se evita usar 
# em um projeto grande ja que não vai ser possivel saber  quem altero ela 

