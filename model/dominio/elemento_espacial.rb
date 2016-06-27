#require 'byebug'
require_relative '../../model/excepciones/elemento_muerto_excepcion'
class ElementoEspacial

  attr_accessor :vida
  attr_accessor :masa

  def initialize (vida, masa)
    @vida = vida
    @masa = masa
  end

  def chocar_con elemento_espacial
    if !self.esta_vivo? || !elemento_espacial.esta_vivo?
      fail ElementoEspacialMuertoExcepcion.new
    end
    efectos = Efecto.new(self, elemento_espacial)
    efectos.afectar_choque
  end

  def efecto_actual(elemento_espacial)
    @choques_permitidos[elemento_espacial.class]
  end

  def esta_vivo?
    @esta_vivo = false
    if (@vida > 0 and @masa > 0)
      @esta_vivo = true
    end
    return @esta_vivo
  end

end
