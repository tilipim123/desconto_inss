FactoryBot.define do
  factory :endereco do
    logradouro { "MyString" }
    numero { "MyString" }
    bairro { "MyString" }
    cidade { "MyString" }
    estado { "MyString" }
    cep { "MyString" }
    proponente { nil }
  end
end
