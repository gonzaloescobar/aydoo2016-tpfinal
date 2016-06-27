#require 'byebug'
require_relative '../dominio/elemento_espacial'
require_relative '../efectos/efecto_destructivo'
require_relative '../efectos/efecto_constructivo'
require_relative '../efectos/efecto_masa'
require_relative '../efectos/efecto_nulo'
class Nave < ElementoEspacial

  def initialize (vida, masa)
    super
    @choques_permitidos = {Nave => EfectoDestructivo.new(100),
      Asteroide => EfectoMasa.new(-50),
      Misil => EfectoDestructivo.new(80),
      Bomba => EfectoDestructivo.new(50),
      Estrella => EfectoConstructivo.new}
    end
  end
