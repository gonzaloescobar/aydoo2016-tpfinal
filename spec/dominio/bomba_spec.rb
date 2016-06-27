require 'rspec'
require 'spec_helper'
require_relative '../../model/dominio/misil'
require_relative '../../model/dominio/nave'
require_relative '../../model/dominio/bomba'

describe 'Bomba' do

  it 'deberia retornar 100 de vida cuando se crea con 100' do
    bomba = Bomba.new 100, 50
    expect(bomba.vida).to eq 100
  end

end
