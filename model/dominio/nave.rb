#require 'byebug'
require_relative '../dominio/elemento_espacial'
require_relative '../efecto_destructivo'
require_relative '../efecto_masa'
class Nave < ElementoEspacial

  def reglas_colisiones

    @reglas_colisiones = {Nave => EfectoDestructivo.new(100),
                          Asteroide => EfectoMasa.new(-50)}
  end

end
