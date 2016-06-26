#require 'byebug'

class Efecto

  def initialize elemento_chocado, elemento_chocante
    @elemento_chocado = elemento_chocado
    @elemento_chocante = elemento_chocante
  end

  def afectar_choque

    elemento_clonado = @elemento_chocado.clone

    efecto_chocado = @elemento_chocado.efecto_actual(@elemento_chocante)
    efecto_chocado.afectar(@elemento_chocado, @elemento_chocante)

    efecto_chocante = @elemento_chocante.efecto_actual(@elemento_chocado)
    efecto_chocante.afectar(@elemento_chocante, elemento_clonado)
  end


end
