#require 'byebug'
require_relative '../efectos/efecto'
class EfectoConstructivo < Efecto

  def afectar elemento_espacial_afectado, elemento_espacial_afectante
    elemento_espacial_afectado.vida += elemento_espacial_afectante.vida
  end

end
