#require 'byebug'
require_relative '../dominio/elemento_espacial'
require_relative '../efectos/efecto_destructivo'
require_relative '../efectos/efecto_constructivo'
require_relative '../efectos/efecto_masa'
require_relative '../efectos/efecto_nulo'

# Esta clase Sol se crea para testear la capacidad del
# programa de agregar nuevos elementos sin romper el principio
# abierto cerrado
class Sol < ElementoEspacial

  def initialize (vida, masa)
    super
    @choques_permitidos = {Nave => EfectoDestructivo.new(100)}
    end
  end
