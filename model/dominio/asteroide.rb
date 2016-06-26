#require 'byebug'
require_relative '../dominio/elemento_espacial'

class Asteroide < ElementoEspacial


  def initialize (vida, masa)
    @vida = vida
    @masa = masa
    @choques_permitidos = {Nave => EfectoMasa.new(10)}
  end

end
