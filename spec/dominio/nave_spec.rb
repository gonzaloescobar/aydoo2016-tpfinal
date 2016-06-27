require 'rspec'
require 'spec_helper'
require_relative '../../model/dominio/nave'
require_relative '../../model/dominio/sol'
require_relative '../../model/excepciones/elemento_muerto_excepcion'

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

  it 'deberia retornar vida 50 cuando choca con bomba' do
    nave = Nave.new 100, 100
    bomba = Bomba.new 100, 100
    nave.chocar_con(bomba)
    expect(nave.vida).to eq 50
  end

  it 'deberia retornar true cuando esta_vivo? con vida 200' do
    nave = Nave.new 200, 100
    expect(nave.esta_vivo?).to eq true
  end

  it 'deberia retornar false cuando esta_vivo? con vida 0' do
    nave = Nave.new 0, 100
    expect(nave.esta_vivo?).to eq false
  end

  it 'deberia retornar vida 20 cuando nave choca con misil' do
    nave = Nave.new 100, 100
    misil = Misil.new 100, 100
    nave.chocar_con(misil)
    expect(nave.vida).to eq 20
  end

  it 'deberia retornar vida 300 cuando nave de vida 100 choca con estrella de vida 200' do
    nave = Nave.new 100, 100
    estrella = Estrella.new 200, 100
    nave.chocar_con(estrella)
    expect(nave.vida).to eq 300
  end

  it 'deberia retornar ElementoEspacialMuertoExcepcion cuando el elemento chocado esta muerto por vida' do
    nave = Nave.new 0, 100
    estrella = Estrella.new 200, 100
    expect {nave.chocar_con(estrella)}.to raise_exception ElementoEspacialMuertoExcepcion
  end

  it 'deberia retornar ElementoEspacialMuertoExcepcion cuando el elemento chocado esta muerto por masa' do
    nave = Nave.new 100, 0
    estrella = Estrella.new 200, 100
    expect {nave.chocar_con(estrella)}.to raise_exception ElementoEspacialMuertoExcepcion
  end

  it 'deberia retornar 140 cuando se agrega nuevo elemento sol y se lo choca contra una nave' do
    nave = Nave.new 150, 250
    sol = Sol.new 1000, 2000
    nave.agregar_nuevo_elemento(Sol, EfectoDestructivo.new(10))
    nave.chocar_con(sol)
    expect(nave.vida).to eq 140
  end


end
