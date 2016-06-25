#require 'byebug'
require_relative '../model/elemento_espacial'
class Nave < ElementoEspacial

  def chocar_con asteroide
    @@masa_actual = @masa
    @masa = @masa - (asteroide.masa * 0.5)
    asteroide.masa += @@masa_actual * 0.1
  end
end
