#require 'byebug'
require_relative '../dominio/elemento_espacial'
require_relative '../efectos/efecto_destructivo'
require_relative '../efectos/efecto_constructivo'
require_relative '../efectos/efecto_masa'
require_relative '../efectos/efecto_nulo'

class Estrella < ElementoEspacial

  def initialize (vida, masa)
    super
    @choques_permitidos = {Nave => EfectoDestructivo.new(@vida),
      Asteroide => EfectoDestructivo.new(@vida),
      Misil => EfectoNulo.new,
      Bomba => EfectoDestructivo.new(@vida),
      Estrella => EfectoDestructivo.new(@vida)}
    end
  end
