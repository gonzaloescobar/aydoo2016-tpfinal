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

  it 'deberia retornar 400 de vida cuando misil choque con nave' do
    misil = Misil.new 500, 100
    nave = Nave.new 100, 100
    misil.chocar_con(nave)
    expect(misil.vida).to eq 400
  end

end
