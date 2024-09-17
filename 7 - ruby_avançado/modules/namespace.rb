# Definimos o módulo ReverseWorld, que age como um namespace
# O método puts deste módulo inverte a string fornecida antes de imprimi-la
module ReverseWorld
  def self.puts text
    print text.reverse.to_s
  end
end

# Definimos o módulo NormalWorld, que age como um namespace
# O método puts deste módulo imprime a string fornecida sem alterações
module NormalWorld
  def self.puts text
    print text
  end
end

# Chamamos o método puts do módulo ReverseWorld
# Isso imprimirá a string "O resultado é" invertida
ReverseWorld::puts "O resultado é"

# Chamamos o método puts do módulo NormalWorld
# Isso imprimirá a string " O resultado é" normalmente
NormalWorld::puts " O resultado é"
