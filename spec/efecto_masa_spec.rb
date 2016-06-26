require 'rspec'
require 'spec_helper'
require_relative '../model/efecto_masa'

describe 'EfectoMasa' do

  it 'deberia retornar 150 de masa cuando se afecta con asteroide masa 100' do
    una_nave = Nave.new 200, 200
    un_asteroide = Asteroide.new 100, 100
    efecto = EfectoMasa.new -50
    efecto.afectar(una_nave, un_asteroide)

    expect(una_nave.masa).to eq 150
  end

end
