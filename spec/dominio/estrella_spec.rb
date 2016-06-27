require 'rspec'
require 'spec_helper'
require_relative '../../model/dominio/estrella'

describe 'Estrella' do

  it 'deberia retornar 100 de vida cuando se crea con 100' do
    estrella = Estrella.new 100, 50
    expect(estrella.vida).to eq 100
  end


end
