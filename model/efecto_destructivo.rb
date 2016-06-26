#require 'byebug'
class EfectoDestructivo

  def initialize cantidad_a_destruir
    @cantidad = cantidad_a_destruir
  end

  def afectar elemento_espacial_afectado
    elemento_espacial_afectado.vida -= @cantidad
  end

end
