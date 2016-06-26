#require 'byebug'
require_relative '../dominio/elemento_espacial'
require_relative '../efecto_destructivo'
require_relative '../efecto_masa'

class Nave < ElementoEspacial

  def initialize (vida, masa)
    @vida = vida
    @masa = masa
    @choques_permitidos = {Nave => EfectoDestructivo.new(100),
      Asteroide => EfectoMasa.new(-50)}
  end
end
