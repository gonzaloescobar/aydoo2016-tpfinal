#require 'byebug'
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
