#require 'byebug'
require_relative '../dominio/elemento_espacial'
require_relative '../efectos/efecto_destructivo'
require_relative '../efectos/efecto_masa'
require_relative '../efectos/efecto_nulo'
require_relative '../efecto'

class Misil < ElementoEspacial

  def initialize (vida, masa)
    @vida = vida
    @masa = masa
    @choques_permitidos = {Nave => EfectoDestructivo.new(100),
      Misil => EfectoDestructivo.new(100),
      Asteroide => EfectoNulo.new}
  end
end
