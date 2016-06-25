require 'rspec'
require 'spec_helper'
require_relative '../model/nave'

describe 'Nave' do

  it 'deberia retornar 100 de vida cuando se crea con 100' do
    nave = Nave.new 100, 50
    expect(nave.vida).to eq 100
  end

  it 'deberia retornar 100 de masa cuando se crea con 100' do
    nave = Nave.new 200, 100
    expect(nave.masa).to eq 100
  end

end
