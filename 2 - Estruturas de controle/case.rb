puts 'digite o numero do seu mês em que você nasceu?'

month = gets.chomp.to_i
#  gets.chomp.to_i serve pra pega um input

case month

# when se  usa pra 'quando'
# .. serve pra por um intevalo entre valores

when 1..3
  puts 'Você  nasceu no começo  do ano'
when 9..12
  puts 'Você nasceu no  fim do ano'
when 4..6
  puts 'você nasceu na primeira metade do ano'
when 7..9
  puts 'você nasceu na segunda metade do ano'
else
  puts 'nao foi possivel identificar'
end
