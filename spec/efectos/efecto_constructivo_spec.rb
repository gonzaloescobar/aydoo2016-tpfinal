require 'rspec'
require 'spec_helper'
require_relative '../../model/efectos/efecto_constructivo'

describe 'EfectoConstructivo' do

  it 'deberia retornar 400 de vida cuando se crea afecta nave con vida 200' do
    una_nave = Nave.new 200, 200
    otra_nave = Nave.new 100, 100
    efecto = EfectoConstructivo.new 100
    efecto.afectar(una_nave, otra_nave)

    expect(una_nave.vida).to eq 300
  end

end
