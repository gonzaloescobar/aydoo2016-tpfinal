#require 'byebug'

class EfectoMasa

  def initialize cantidad_a_destruir
    @cantidad = cantidad_a_destruir
  end

  def afectar elemento_espacial_afectado, elemento_espacial_afectante
    elemento_espacial_afectado.masa += (elemento_espacial_afectante.masa * @cantidad)/100
  end

end
