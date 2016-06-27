#require 'byebug'
class EfectoConstructivo

  def initialize cantidad_a_construir
    @cantidad = cantidad_a_construir
  end

  def afectar elemento_espacial_afectado, elemento_espacial_afectante
    elemento_espacial_afectado.vida += @cantidad
  end

end
