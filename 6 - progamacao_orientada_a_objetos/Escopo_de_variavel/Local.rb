def foo
  #pode Ser definida como local ou local_
  
  local = 'local é acessada apenas dentro desse metodo' #tipo de dado string
  puts "<---DENTRO DO METODO--->"
  puts local
  puts "<---------------------->"
end

foo # aqui fazendo a chamada, ela retorna oq estar dentro do metodo 
# que seria uma variavel local no caso do tipo string

# se tentamos da um print 
# vai da um erro por que a variavel e local ela esta isolada
# assim sendo possivel ter duas variaveis do mesmo nome

local = "gps"
puts "<---FORA DO METODO--->"
puts local
puts "<---------------------->"