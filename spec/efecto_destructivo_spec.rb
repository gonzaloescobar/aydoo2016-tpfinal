require 'rspec'
require 'spec_helper'
require_relative '../model/efecto_destructivo'

describe 'EfectoDestructivo' do

  it 'deberia retornar 100 de vida cuando se crea afecta nave con vida 200' do
    una_nave = Nave.new 200, 200
    efecto = EfectoDestructivo.new 100
    efecto.afectar(una_nave)

    expect(una_nave.vida).to eq 100
  end

end
