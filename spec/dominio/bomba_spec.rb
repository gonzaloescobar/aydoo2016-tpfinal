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

  it 'deberia retornar 100 de masa cuando bomba choque con nave masa 100' do
    bomba = Bomba.new 200, 200
    nave = Nave.new 50, 100
    bomba.chocar_con(nave)
    expect(bomba.vida).to eq 100
  end

  it 'deberia retornar masa intacta cuando bomba choque con nave' do
    bomba = Bomba.new 200, 200
    nave = Nave.new 50, 100
    bomba.chocar_con(nave)
    expect(bomba.masa).to eq 200
  end

  it 'deberia retornar 0 de vida cuando bomba choque con asteroide' do
    bomba = Bomba.new 200, 100
    asteroide = Asteroide.new 30, 100
    bomba.chocar_con(asteroide)
    expect(bomba.vida).to eq 0
  end

  it 'deberia retornar masa intacta cuando bomba choque con asteroide' do
    bomba = Bomba.new 200, 100
    asteroide = Asteroide.new 30, 100
    bomba.chocar_con(asteroide)
    expect(bomba.masa).to eq 100
  end

  it 'deberia retornar 0 de vida cuando bomba choque con asteroide' do
    bomba = Bomba.new 200, 100
    misil = Misil.new 30, 100
    bomba.chocar_con(misil)
    expect(bomba.vida).to eq 100
  end

  it 'deberia retornar masa intacta cuando bomba choque con asteroide' do
    bomba = Bomba.new 200, 150
    misil = Misil.new 30, 100
    bomba.chocar_con(misil)
    expect(bomba.masa).to eq 150
  end

  it 'deberia retornar 100 de vida cuando bomba choque con bomba' do
    bomba = Bomba.new 200, 100
    otra_bomba = Bomba.new 30, 100
    bomba.chocar_con(otra_bomba)
    expect(bomba.vida).to eq 100
  end

  it 'deberia retornar masa intacta cuando bomba choque con bomba' do
    bomba = Bomba.new 200, 100
    otra_bomba = Bomba.new 30, 100
    bomba.chocar_con(otra_bomba)
    expect(bomba.masa).to eq 100
  end

  it 'deberia retornar 100 de vida cuando bomba choque con estrella' do
    bomba = Bomba.new 200, 100
    estrella = Estrella.new 30, 100
    bomba.chocar_con(estrella)
    expect(bomba.vida).to eq 100
  end

  it 'deberia retornar masa intacta cuando bomba choque con estrella' do
    bomba = Bomba.new 200, 120
    estrella = Estrella.new 30, 100
    bomba.chocar_con(estrella)
    expect(bomba.masa).to eq 120
  end

  it 'deberia retornar true cuando esta_vivo? con vida 200' do
    bomba = Bomba.new 200, 100
    expect(bomba.esta_vivo?).to eq true
  end

  it 'deberia retornar false cuando esta_vivo? con vida 0' do
    bomba = Bomba.new 0, 100
    expect(bomba.esta_vivo?).to eq false
  end

end
