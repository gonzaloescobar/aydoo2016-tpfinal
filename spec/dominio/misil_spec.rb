require 'rspec'
require 'spec_helper'
require_relative '../../model/dominio/misil'
require_relative '../../model/dominio/nave'

describe 'Misil' do

  it 'deberia retornar 100 de vida cuando se crea con 100' do
    misil = Misil.new 100, 50
    expect(misil.vida).to eq 100
  end

  it 'deberia retornar 100 de masa cuando se crea con 100' do
    misil = Misil.new 200, 100
    expect(misil.masa).to eq 100
  end


end
