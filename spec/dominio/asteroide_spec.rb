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

end
