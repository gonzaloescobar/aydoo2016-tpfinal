#require 'byebug'
require_relative '../dominio/elemento_espacial'
require_relative '../efectos/efecto_destructivo'
require_relative '../efectos/efecto_constructivo'
require_relative '../efectos/efecto_masa'
require_relative '../efectos/efecto_nulo'

class Bomba < ElementoEspacial

  def initialize (vida, masa)
    super
    @choques_permitidos = {Nave => EfectoDestructivo.new(100),
      Asteroide => EfectoDestructivo.new(@vida),
      Misil => EfectoDestructivo.new(@vida/2),
      Bomba => EfectoDestructivo.new(100),
      Estrella => EfectoDestructivo.new(100)}
    end
  end
