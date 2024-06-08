# frozen_string_literal: true

# app/models/telefone.rb
class Telefone < ApplicationRecord
  belongs_to :proponente

  enum tipo: { pessoal: 'pessoal', referencia: 'referencia' }

  validates :numero, :tipo, presence: true
end