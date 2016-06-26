#require 'byebug'
require_relative '../dominio/elemento_espacial'

class Asteroide < ElementoEspacial

  def reglas_colisiones
    @reglas_colisiones = {Nave => EfectoMasa.new(-10)}
  end

end
