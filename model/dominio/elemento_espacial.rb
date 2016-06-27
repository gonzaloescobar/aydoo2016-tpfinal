#require 'byebug'
require_relative '../../model/excepciones/elemento_muerto_excepcion'
require_relative '../../model/excepciones/vida_negativa_excepcion'
class ElementoEspacial

  attr_accessor :vida
  attr_accessor :masa

  def initialize (vida, masa)
    if vida < 0
      fail VidaNegativaExcepcion.new
    end

    @vida = vida
    @masa = masa
    @choques_permitidos = Hash.new
  end

  def chocar_con elemento_espacial
    if !self.esta_vivo? || !elemento_espacial.esta_vivo?
      fail ElementoEspacialMuertoExcepcion.new
    end

    elemento_clonado = self.clone
    efecto_chocado = self.efecto_actual(elemento_espacial)
    efecto_chocado.afectar(self, elemento_espacial)
    efecto_chocante = elemento_espacial.efecto_actual(self)
    efecto_chocante.afectar(elemento_espacial, elemento_clonado)
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

  def agregar_nuevo_elemento(elemento, efecto)
    @choques_permitidos[elemento] = efecto
  end

end
