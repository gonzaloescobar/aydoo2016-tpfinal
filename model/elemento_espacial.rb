#require 'byebug'
class ElementoEspacial

attr_accessor :vida
attr_accessor :masa

def initialize (vida, masa)
  @vida = vida
  @masa = masa
end

def chocar_con elemento_espacial
end

def esta_vivo?
  if (@vida > 0 and @masa > 0)
    return true
  else
    return false
  end
end

end
