require 'rspec'
require 'spec_helper'
require_relative '../../model/dominio/misil'

describe 'Misil' do

  it 'deberia retornar 100 de vida cuando se crea con 100' do
    misil = Misil.new 100, 50
    expect(misil.vida).to eq 100
  end

  it 'deberia retornar 100 de masa cuando se crea con 100' do
    misil = Misil.new 200, 100
    expect(misil.masa).to eq 100
  end

  it 'deberia retornar 400 de vida cuando misil choque con nave' do
    misil = Misil.new 500, 100
    nave = Nave.new 100, 100
    misil.chocar_con(nave)
    expect(misil.vida).to eq 400
  end

  it 'deberia retornar vida intacta cuando misil choque con asteroide' do
    misil = Misil.new 500, 100
    asteroide = Asteroide.new 100, 100
    misil.chocar_con(asteroide)
    expect(misil.vida).to eq 500
  end

  it 'deberia retornar masa intacta cuando misil choque con asteroide' do
    misil = Misil.new 500, 100
    asteroide = Asteroide.new 100, 100
    misil.chocar_con(asteroide)
    expect(misil.masa).to eq 100
  end

  it 'deberia retornar vida intacta cuando misil choque con bomba' do
    misil = Misil.new 500, 100
    bomba = Bomba.new 100, 100
    misil.chocar_con(bomba)
    expect(misil.vida).to eq 500
  end

  it 'deberia retornar masa intacta cuando misil choque con bomba' do
    misil = Misil.new 500, 100
    bomba = Bomba.new 100, 100
    misil.chocar_con(bomba)
    expect(misil.masa).to eq 100
  end

  it 'deberia retornar true cuando esta_vivo? con vida 200' do
    misil = Misil.new 200, 100
    expect(misil.esta_vivo?).to eq true
  end

  it 'deberia retornar false cuando esta_vivo? con vida 0' do
    misil = Misil.new 0, 100
    expect(misil.esta_vivo?).to eq false
  end
end
