require 'rspec'
require 'spec_helper'
require_relative '../../model/dominio/misil'

describe 'Misil' do

  it 'deberia retornar 100 de vida cuando se crea con 100' do
    misil = Misil.new 100, 50
    expect(misil.vida).to eq 100
  end

end
