#require 'byebug'
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
