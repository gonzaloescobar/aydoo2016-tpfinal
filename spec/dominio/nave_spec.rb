require 'rspec'
require 'spec_helper'
require_relative '../../model/dominio/nave'

describe 'Nave' do

  it 'deberia retornar 100 de vida cuando se crea con 100' do
    nave = Nave.new 100, 50
    expect(nave.vida).to eq 100
  end

  it 'deberia retornar 100 de masa cuando se crea con 100' do
    nave = Nave.new 200, 100
    expect(nave.masa).to eq 100
  end

  it 'deberia retornar 50 de masa cuando nave choque con asteroide masa 100' do
    nave = Nave.new 100, 100
    asteroide = Asteroide.new 50, 100
    nave.chocar_con(asteroide)
    expect(nave.masa).to eq 50
  end

  it 'deberia retornar vida intacta cuando nave choca con asteroide' do
    nave = Nave.new 100, 100
    asteroide = Asteroide.new 50, 100
    nave.chocar_con(asteroide)
    expect(nave.vida).to eq 100
  end

  it 'deberia retornar masa de asteroide 10% mas de masa de nave cuando choca con nave' do
    nave = Nave.new 100, 100
    asteroide = Asteroide.new 50, 100
    nave.chocar_con(asteroide)
    expect(asteroide.masa).to eq 110
  end


  it 'deberia retornar true cuando esta_vivo? con vida 200' do
    nave = Nave.new 200, 100
    expect(nave.esta_vivo?).to eq true
  end

  it 'deberia retornar false cuando esta_vivo? con vida 0' do
    nave = Nave.new 0, 100
    expect(nave.esta_vivo?).to eq false
  end

  it 'deberia retornar vida intacta cuando nave choca con asteroide' do
    nave = Nave.new 100, 100
    misil = Misil.new 100, 100
    nave.chocar_con(misil)
    expect(nave.vida).to eq 20
  end

end
