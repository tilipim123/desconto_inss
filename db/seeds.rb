# frozen_string_literal: true

10.times do |i|
  proponente = Proponente.create!(
    nome: "Proponente #{i+1}",
    cpf: "1234567890#{i}",
    data_de_nascimento: '1980-01-01',
    salario: rand(1000..5000)
  )

  Endereco.create!(
    logradouro: "Rua #{i+1}",
    numero: "#{i+1}",
    bairro: "Bairro #{i+1}",
    cidade: "Cidade #{i+1}",
    estado: "Estado #{i+1}",
    cep: '12345-678',
    proponente: proponente
  )

  Telefone.create!(
    numero: "1234567890#{i}",
    tipo: 'pessoal',
    proponente: proponente
  )

  Telefone.create!(
    numero: "0987654321#{i}",
    tipo: 'referencia',
    proponente: proponente
  )
end
