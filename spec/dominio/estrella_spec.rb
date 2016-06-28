require 'rspec'
require 'spec_helper'
require_relative '../../model/dominio/estrella'

describe 'Estrella' do

  it 'deberia retornar 100 de vida cuando se crea con 100' do
    estrella = Estrella.new 100, 50
    expect(estrella.vida).to eq 100
  end

  it 'deberia retornar 100 de masa cuando se crea con 100' do
    estrella = Estrella.new 200, 100
    expect(estrella.masa).to eq 100
  end

  it 'deberia retornar 0 de vida cuando estrella choque con nave' do
    estrella = Estrella.new 183, 100
    nave = Nave.new 100, 200
    estrella.chocar_con(nave)
    expect(estrella.vida).to eq 0
  end

  it 'deberia retornar masa intacta cuando estrella choque con nave' do
    estrella = Estrella.new 100, 110
    nave = Nave.new 100, 200
    estrella.chocar_con(nave)
    expect(estrella.masa).to eq 110
  end

  it 'deberia retornar 120 de vida cuando estrella choque con misil' do
    estrella = Estrella.new 120, 100
    misil = Misil.new 100, 200
    estrella.chocar_con(misil)
    expect(estrella.vida).to eq 120
  end

  it 'deberia retornar masa instacta cuando estrella choque con misil' do
    estrella = Estrella.new 100, 200
    misil = Misil.new 100, 200
    estrella.chocar_con(misil)
    expect(estrella.masa).to eq 200
  end

  it 'deberia retornar 0 de vida cuando estrella choque con bomba' do
    estrella = Estrella.new 700, 100
    bomba = Bomba.new 100, 200
    estrella.chocar_con(bomba)
    expect(estrella.vida).to eq 0
  end

  it 'deberia retornar masa intacta cuando estrella choque con bomba' do
    estrella = Estrella.new 100, 120
    bomba = Bomba.new 100, 200
    estrella.chocar_con(bomba)
    expect(estrella.masa).to eq 120
  end

  it 'deberia retornar 0 de vida cuando estrella choque con asteroide' do
    estrella = Estrella.new 900, 100
    asteroide = Asteroide.new 100, 200
    estrella.chocar_con(asteroide)
    expect(estrella.vida).to eq 0
  end

  it 'deberia retornar masa instacta cuando estrella choque con asteroide' do
    estrella = Estrella.new 100, 130
    asteroide = Asteroide.new 100, 200
    estrella.chocar_con(asteroide)
    expect(estrella.masa).to eq 130
  end

  it 'deberia retornar 0 de vida cuando estrella choque con estrella2' do
    estrella = Estrella.new 200, 300
    estrella2 = Estrella.new 100, 200
    estrella.chocar_con(estrella2)
    expect(estrella.vida).to eq 0
  end

  it 'deberia retornar masa instacta cuando estrella choque con estrella2' do
    estrella = Estrella.new 100, 100
    estrella2 = Estrella.new 100, 200
    estrella.chocar_con(estrella2)
    expect(estrella.masa).to eq 100
  end

  it 'deberia retornar true cuando esta_vivo? con vida 200' do
    estrella = Estrella.new 200, 100
    expect(estrella.esta_vivo?).to eq true
  end

  it 'deberia retornar false cuando esta_vivo? con vida 0' do
    estrella = Estrella.new 0, 100
    expect(estrella.esta_vivo?).to eq false
  end

end
