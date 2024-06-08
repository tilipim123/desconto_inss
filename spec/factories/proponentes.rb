# frozen_string_literal: true

# spec/factories/proponentes.rb
FactoryBot.define do
  factory :proponente do
    nome { 'Nome Exemplo' }
    cpf { '12345678901' }
    data_de_nascimento { '2000-01-01' }
    salario { 1500.00 }
    inss { 100.00 }
    endereco
  end
end
