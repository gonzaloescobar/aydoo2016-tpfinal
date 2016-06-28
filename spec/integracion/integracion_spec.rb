require 'rspec'
require 'spec_helper'
require_relative '../../model/dominio/asteroide'
require_relative '../../model/dominio/nave'
require_relative '../../model/dominio/misil'
require_relative '../../model/dominio/estrella'
require_relative '../../model/dominio/bomba'


describe 'Integracion' do

  it 'ejemplo 1 nave choca con asteroide' do
    nave = Nave.new 100, 100
    asteroide = Asteroide.new 50, 100
    nave.chocar_con(asteroide)
    expect(nave.masa).to eq 50
    expect(nave.vida).to eq 100
    expect(asteroide.masa).to eq 110
    expect(asteroide.vida).to eq 50
  end

  it 'ejemplo 2 estrella choca con misil' do
    estrella = Estrella.new 50, 10
    misil = Misil.new 10, 30
    estrella.chocar_con(misil)
    expect(estrella.vida).to eq 50
    expect(estrella.masa).to eq 10
    expect(misil.vida).to eq 10
    expect(misil.masa).to eq 30
  end


it 'ejemplo 3 bomba choca con bomba' do
    bomba = Bomba.new 200, 90
    bomba2 = Bomba.new 20, 45
    bomba.chocar_con(bomba2)
    expect(bomba.vida).to eq 100
    expect(bomba.masa).to eq 90
    expect(bomba2.vida).to eq 0
    expect(bomba2.masa).to eq 45
  end

  it 'ejemplo 4 bomba choca con asteroide' do
    bomba = Bomba.new 200, 100
    asteroide = Asteroide.new 30, 100
    bomba.chocar_con(asteroide)
    expect(bomba.vida).to eq 0
    expect(bomba.masa).to eq 100
    expect(asteroide.vida).to eq 30
    expect(asteroide.masa).to eq 100
  end

  it 'ejemplo 5 nave choca con estrella' do
    nave = Nave.new 100, 100
    estrella = Estrella.new 50, 50
    nave.chocar_con(estrella)
    expect(nave.vida).to eq 150
    expect(nave.masa).to eq 100
    expect(estrella.vida).to eq 0
    expect(estrella.masa).to eq 50
  end

  #La clase SOL solamente se creó para probar el principio abierto-cerrado
  it 'deberia retornar 140 cuando se agrega nuevo elemento Sol y se lo choca contra una nave' do
    nave = Nave.new 150, 250
    sol = Sol.new 1000, 2000
    nave.agregar_nuevo_elemento(Sol, EfectoDestructivo.new(10))
    nave.chocar_con(sol)
    expect(nave.vida).to eq 140
  end

end
