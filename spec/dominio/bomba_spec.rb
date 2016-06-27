require 'rspec'
require 'spec_helper'
require_relative '../../model/dominio/bomba'

describe 'Bomba' do

  it 'deberia retornar 100 de vida cuando se crea con 100' do
    bomba = Bomba.new 100, 50
    expect(bomba.vida).to eq 100
  end

  it 'deberia retornar 100 de masa cuando se crea con 100' do
    bomba = Bomba.new 200, 100
    expect(bomba.masa).to eq 100
  end

  it 'deberia retornar 50 de masa cuando bomba choque con asteroide masa 100' do
    bomba = Bomba.new 200, 200
    nave = Nave.new 50, 100
    bomba.chocar_con(nave)
    expect(bomba.vida).to eq 100
  end

  it 'deberia retornar 0 de vida cuando bomba choque con asteroide' do
    bomba = Bomba.new 200, 100
    asteroide = Asteroide.new 30, 100
    bomba.chocar_con(asteroide)
    expect(bomba.vida).to eq 0
  end

  it 'deberia retornar 0 de vida cuando bomba choque con asteroide' do
    bomba = Bomba.new 200, 100
    misil = Misil.new 30, 100
    bomba.chocar_con(misil)
    expect(bomba.vida).to eq 100
  end

  it 'deberia retornar 100 de vida cuando bomba choque con bomba' do
    bomba = Bomba.new 200, 100
    otra_bomba = Bomba.new 30, 100
    bomba.chocar_con(otra_bomba)
    expect(bomba.vida).to eq 100
  end

  it 'deberia retornar 100 de vida cuando bomba choque con estrella' do
    bomba = Bomba.new 200, 100
    estrella = Estrella.new 30, 100
    bomba.chocar_con(estrella)
    expect(bomba.vida).to eq 100
  end

end
