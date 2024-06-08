# frozen_string_literal: true

# spec/factories/telefones.rb
FactoryBot.define do
  factory :telefone do
    numero { '11987654321' }
    tipo { 'pessoal' }
    proponente
  end
end
