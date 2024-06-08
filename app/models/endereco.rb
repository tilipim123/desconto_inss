# frozen_string_literal: true

# app/models/endereco.rb
class Endereco < ApplicationRecord
  belongs_to :proponente

  validates :logradouro, :numero, :bairro, :cidade, :estado, :cep, presence: true
end