# frozen_string_literal: true

# spec/models/proponente_spec.rb
require 'rails_helper'

RSpec.describe Proponente, type: :model do
  it 'is valid with valid attributes' do
    proponente = build(:proponente)
    expect(proponente).to be_valid
  end

  it 'is not valid without a nome' do
    proponente = build(:proponente, nome: nil)
    expect(proponente).to_not be_valid
  end

  it 'is not valid without a cpf' do
    proponente = build(:proponente, cpf: nil)
    expect(proponente).to_not be_valid
  end

  it 'is not valid without a data_de_nascimento' do
    proponente = build(:proponente, data_de_nascimento: nil)
    expect(proponente).to_not be_valid
  end

  it 'is not valid without a salario' do
    proponente = build(:proponente, salario: nil)
    expect(proponente).to_not be_valid
  end

  it 'is not valid without a inss' do
    proponente = build(:proponente, inss: nil)
    expect(proponente).to_not be_valid
  end
end
