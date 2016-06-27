#require 'byebug'
require_relative '../dominio/elemento_espacial'
require_relative '../efecto_destructivo'
require_relative '../efecto_masa'
require_relative '../efecto_nulo'

class Misil < ElementoEspacial

  def initialize (vida, masa)
    @vida = vida
    @masa = masa
    @choques_permitidos = {Nave => EfectoDestructivo.new(100),
      Misil => EfectoDestructivo.new(100),
      Asteroide => EfectoNulo.new(0)}
  end
end
