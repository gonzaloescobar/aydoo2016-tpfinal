#require 'byebug'
require_relative '../model/elemento_espacial'
class Nave < ElementoEspacial

  def chocar_con asteroide
    @masa = @masa - (asteroide.masa * 0.5)
  end
end
