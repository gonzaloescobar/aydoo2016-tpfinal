#require 'byebug'

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
