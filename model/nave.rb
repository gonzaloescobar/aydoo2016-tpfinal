#require 'byebug'
require_relative '../model/elemento_espacial'
class Nave < ElementoEspacial

  def chocar_con elemento_espacial
    @@masa_actual = @masa
    @masa -= elemento_espacial.masa * 0.5
    elemento_espacial.masa += @@masa_actual * 0.1
  end
end
