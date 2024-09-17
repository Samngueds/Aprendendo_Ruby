require 'os'
# require serve pra chama uma gem/biblioteca

def my_os
  if OS.windows?
    "windows"
  elsif OS.linux?
    "linux"
  elsif OS.mac?
    "Osx"
  else
    "Não consegui identificar"
  end
end

puts "Meu PC possui #{OS.cpu_count} cores, é de #{OS.bits} bits e o sistema operacional é #{my_os}"
