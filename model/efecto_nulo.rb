#require 'byebug'
require_relative '../model/efecto'
class EfectoNulo < Efecto

  def initialize cantidad_a_destruir
    @cantidad = cantidad_a_destruir
  end

  def afectar elemento_espacial_afectado, elemento_espacial_afectante
    #metodo sin logica que representa un efecto del dominio
  end

end
