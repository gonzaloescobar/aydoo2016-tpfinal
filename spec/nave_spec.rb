require 'rspec'
require_relative '../model/nave'

describe 'Nave' do

  it 'deberia retornar 100 de vida cuando se crea con 100' do
    nave = Nave.new 100, 50
    expect(nave.vida).to eq 100
  end

end
