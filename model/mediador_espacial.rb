#require 'byebug'
class MediadorEspacial

  def initialize elemento_espacial_chocado, elemento_espacial_chocante
    @efectos = Hash.new
    @efectos[elemento_espacial_chocado.class] = EfectoDestructivo.new elemento_espacial_chocado, elemento_espacial_chocante
  end
end
