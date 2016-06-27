#require 'byebug'
require_relative '../dominio/elemento_espacial'
require_relative '../efectos/efecto_destructivo'
require_relative '../efectos/efecto_masa'

class Bomba < ElementoEspacial

  def initialize (vida, masa)
    @vida = vida
    @masa = masa
    @choques_permitidos = {Nave => EfectoDestructivo.new(100),
      Asteroide => EfectoMasa.new(-(@vida)),
      Misil => EfectoDestructivo.new(@vida/2),
      Bomba => EfectoDestructivo.new(100)}
    end
  end
