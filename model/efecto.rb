#require 'byebug'
class Efecto

  def initialize elemento_chocante, elemento_chocado
    @elemento_chocante = elemento_chocante
    @elemento_chocado = elemento_chocado
  end

  def aplicar_efectos
    @reglas_colisiones = {Nave => EfectoDestructivo.new(100),
      Asteroide => EfectoMasa.new(-50)}
    end
