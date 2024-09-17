array = [1,2,3,4,5,6,7,8]

# o conteudo do || geralmente  vira um variavel vc atribui algum a ele
selection = array.select do |a|
  a >= 4
  # se a for  maior ou igual a 4 ele seleciona ou começa o array aparti dele
end

puts selection
