# frozen_string_literal: true

# spec/factories/enderecos.rb
FactoryBot.define do
  factory :endereco do
    logradouro { 'Rua Exemplo' }
    numero { '123' }
    bairro { 'Bairro Exemplo' }
    cidade { 'Cidade Exemplo' }
    estado { 'Estado Exemplo' }
    cep { '12345678' }
    proponente
  end
end
