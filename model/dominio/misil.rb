#require 'byebug'
require_relative '../dominio/elemento_espacial'
require_relative '../efectos/efecto_destructivo'
require_relative '../efectos/efecto_constructivo'
require_relative '../efectos/efecto_masa'
require_relative '../efectos/efecto_nulo'

class Misil < ElementoEspacial

  def initialize (vida, masa)
    super
    @choques_permitidos = {Nave => EfectoDestructivo.new(100),
      Misil => EfectoDestructivo.new(100),
      Asteroide => EfectoNulo.new,
      Bomba => EfectoNulo.new,
      Estrella => EfectoNulo.new}
    end
  end
