require 'rspec'
require 'spec_helper'
require_relative '../model/asteroide'

describe 'Asteroide' do

  it 'deberia retornar 50 de vida cuando se crea asteroide con 50' do
    asteroide = Asteroide.new 50, 100
    expect(asteroide.vida).to eq 50
  end



end
