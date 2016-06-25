require 'rspec'
require 'spec_helper'
require_relative '../model/elemento_espacial'

describe 'ElementoEspacial' do

  it 'deberia retornar 50 de vida cuando se crea elemento espacial con 50' do
    elemento = ElementoEspacial.new 50, 100
    expect(elemento.vida).to eq 50
  end

  it 'deberia retornar 100 de masa cuando se crea elemento espacial con 100' do
    elemento = ElementoEspacial.new 50, 100
    expect(elemento.masa).to eq 100
  end

end
