#require 'byebug'
require_relative '../efectos/efecto'
class EfectoDestructivo < Efecto

  def initialize cantidad_a_destruir
    @cantidad = cantidad_a_destruir
  end

  def afectar elemento_espacial_afectado, elemento_espacial_afectante
    elemento_espacial_afectado.vida -= @cantidad
    if elemento_espacial_afectado.vida < 0
     elemento_espacial_afectado.vida = 0
    end
  end

end
