hash = {0 => 'zero',1 => 'um',2 => 'dois',3 => 'tres'}


puts 'Selecionado keys com um valor  maior que 0'

selection_key = hash.select do |key, vaule|
  key <= 0
end


puts selection_key
