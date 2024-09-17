# veja que aqui um modulo foi definido

# e deja que foi criado um metodo imprimir



module ImpressaoDecorada
  def imprimir text
    decoracao = '@' * 100 # e possivel mutiplica strings
    puts decoracao
    puts text
    puts decoracao
  end
end

# podemos  chama esse metodo em outros modulos
# usando o include

module Pernas
  include ImpressaoDecorada # isso seria um mixins
  def chute_frontal
    imprimir 'chute Frontal'
  end

  def chute_lateral
    imprimir 'chute lateral'
  end

end


module Bracos
  include ImpressaoDecorada

  def jab_de_direita
    imprimir 'jab de direita'
  end

  def jab_de_esquerda
   imprimir 'jab de esquerda' 
  end

end



module Golpes
  include ImpressaoDecorada

  def rasteira
    imprimir 'rasteira'
  end

  def voadora
   imprimir 'voadora' 
  end

  def gancho
    imprimir 'gancho'
  end

end



# tambem e possivel fazer o mixins de modulos em classes


class LutadorX
include Pernas
include Bracos
include Golpes
end

class LutadorY
include Pernas
include Bracos
include Golpes
end

lutadorx = LutadorX.new # aqui instaciamos o  lutador x criamos um 
#obejto

lutadorx.voadora
lutadorx.rasteira

lutadory = LutadorY.new 
# aqui instaciamos  o outro lutador

lutadory.jab_de_direita
lutadory.jab_de_esquerda