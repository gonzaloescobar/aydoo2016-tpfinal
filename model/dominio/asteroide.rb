#require 'byebug'
require_relative '../dominio/elemento_espacial'
require_relative '../efectos/efecto_destructivo'
require_relative '../efectos/efecto_constructivo'
require_relative '../efectos/efecto_masa'
require_relative '../efectos/efecto_nulo'

class Asteroide < ElementoEspacial

  def initialize (vida, masa)
    super
    @choques_permitidos = {Nave => EfectoMasa.new(10),
      Misil => EfectoNulo.new,
      Asteroide => EfectoNulo.new,
      Bomba => EfectoNulo.new,
      Estrella => EfectoNulo.new}
    end

  end
