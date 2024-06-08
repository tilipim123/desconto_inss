# frozen_string_literal: true

# spec/models/endereco_spec.rb
require 'rails_helper'

RSpec.describe Endereco, type: :model do
  it 'is valid with valid attributes' do
    endereco = build(:endereco)
    expect(endereco).to be_valid
  end

  it 'is not valid without a logradouro' do
    endereco = build(:endereco, logradouro: nil)
    expect(endereco).to_not be_valid
  end

  it 'is not valid without a numero' do
    endereco = build(:endereco, numero: nil)
    expect(endereco).to_not be_valid
  end

  it 'is not valid without a bairro' do
    endereco = build(:endereco, bairro: nil)
    expect(endereco).to_not be_valid
  end

  it 'is not valid without a cidade' do
    endereco = build(:endereco, cidade: nil)
    expect(endereco).to_not be_valid
  end

  it 'is not valid without a estado' do
    endereco = build(:endereco, estado: nil)
    expect(endereco).to_not be_valid
  end

  it 'is not valid without a cep' do
    endereco = build(:endereco, cep: nil)
    expect(endereco).to_not be_valid
  end
end
