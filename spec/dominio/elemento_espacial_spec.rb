require 'rspec'
require 'spec_helper'
require_relative '../../model/dominio/elemento_espacial'

describe 'ElementoEspacial' do

  it 'deberia retornar 50 de vida cuando se crea elemento espacial con 50' do
    elemento = ElementoEspacial.new 50, 100
    expect(elemento.vida).to eq 50
  end

  it 'deberia retornar 100 de masa cuando se crea elemento espacial con 100' do
    elemento = ElementoEspacial.new 50, 100
    expect(elemento.masa).to eq 100
  end

  it 'deberia retornar true cuando esta_vivo? con vida 200' do
    elemento = ElementoEspacial.new 200, 100
    expect(elemento.esta_vivo?).to eq true
  end

  it 'deberia retornar false cuando esta_vivo? con vida 0' do
    elemento = ElementoEspacial.new 0, 100
    expect(elemento.esta_vivo?).to eq false
  end

  it 'deberia retornar true cuando esta_vivo? con masa 100' do
    elemento = ElementoEspacial.new 200, 100
    expect(elemento.esta_vivo?).to eq true
  end

  it 'deberia retornar false cuando esta_vivo? con masa 0' do
    elemento = ElementoEspacial.new 0, 100
    expect(elemento.esta_vivo?).to eq false
  end



end
