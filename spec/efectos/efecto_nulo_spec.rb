require 'rspec'
require 'spec_helper'
require_relative '../../model/efectos/efecto_nulo'

describe 'EfectoNulo' do

  it 'deberia retornar masa instacta cuando el efecto es nulo' do
    una_nave = Nave.new 200, 200
    un_asteroide = Asteroide.new 100, 100
    efecto = EfectoNulo.new
    efecto.afectar(una_nave, un_asteroide)

    expect(una_nave.masa).to eq 200
  end

  it 'deberia retornar vida instacta cuando el efecto es nulo' do
    una_nave = Nave.new 200, 250
    un_asteroide = Asteroide.new 100, 100
    efecto = EfectoNulo.new
    efecto.afectar(una_nave, un_asteroide)

    expect(una_nave.vida).to eq 200
  end

end
