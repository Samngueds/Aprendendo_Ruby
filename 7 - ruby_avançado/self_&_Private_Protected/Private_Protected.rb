class MinhaClasse
  def metodo_publico
    metodo_privado # Chama o método privado
  end
  
  private
  
  def metodo_privado
    puts "Método privado chamado!"
  end
end

obj = MinhaClasse.new
obj.metodo_publico  # Saída: Método privado chamado!
# obj.metodo_privado # Levanta uma exceção NoMethodError


class MinhaClasse
  def comparar_outro(outro)
    outro.metodo_protegido # Chama o método protegido do outro objeto
  end
  
  protected
  
  def metodo_protegido
    puts "Método protegido chamado!"
  end
end

obj1 = MinhaClasse.new
obj2 = MinhaClasse.new
obj1.comparar_outro(obj2)  # Saída: Método protegido chamado!
# obj1.metodo_protegido    # Levanta uma exceção NoMethodError