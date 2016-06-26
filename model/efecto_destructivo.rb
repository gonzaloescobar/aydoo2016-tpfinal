#require 'byebug'
require_relative '../model/efecto'
class EfectoDestructivo < Efecto

  def initialize cantidad_a_destruir
    @cantidad = cantidad_a_destruir
  end

  def afectar elemento_espacial_afectado
    elemento_espacial_afectado.vida -= @cantidad
  end

end
