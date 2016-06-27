require 'rspec'
require 'spec_helper'
require_relative '../../model/dominio/asteroide'

describe 'Asteroide' do

  it 'deberia retornar 50 de vida cuando se crea asteroide con 50' do
    asteroide = Asteroide.new 50, 100
    expect(asteroide.vida).to eq 50
  end

  it 'deberia retornar 100 de masa cuando se crea asteroide con 100' do
    asteroide = Asteroide.new 50, 100
    expect(asteroide.masa).to eq 100
  end

  it 'deberia retornar 120 de masa cuando asteroide choque con nave masa 200' do
    asteroide = Asteroide.new 100, 100
    nave = Nave.new 100, 200
    asteroide.chocar_con(nave)
    expect(asteroide.masa).to eq 120
  end

end
