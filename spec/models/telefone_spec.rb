# frozen_string_literal: true

# spec/models/telefone_spec.rb
require 'rails_helper'

RSpec.describe Telefone, type: :model do
  it 'is valid with valid attributes' do
    telefone = build(:telefone)
    expect(telefone).to be_valid
  end

  it 'is not valid without a numero' do
    telefone = build(:telefone, numero: nil)
    expect(telefone).to_not be_valid
  end

  it 'is not valid without a tipo' do
    telefone = build(:telefone, tipo: nil)
    expect(telefone).to_not be_valid
  end
end
