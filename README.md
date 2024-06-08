
# Projeto Desconto INSS

Este projeto é uma aplicação Ruby on Rails para calcular e gerenciar descontos de INSS para proponentes.

## Requisitos

- Ruby 3.3.1
- Rails 7.1.3.4
- PostgreSQL
- Redis
- Sidekiq

## Gems Utilizadas

- Devise
- Bootstrap
- Chartkick
- Groupdate
- Kaminari
- Rubocop
- FactoryBot

## Instalação

1. Clone o repositório:

```sh
git clone https://github.com/tilipim123/desconto_inss.git
cd desconto_inss
```

2. Instale as dependências:

```sh
bundle install
yarn install
```

3. Configure o banco de dados:

```sh
rails db:create
rails db:migrate
rails db:seed
```

## Configuração do Redis e Sidekiq

Certifique-se de que o Redis está instalado e em execução. Para iniciar o Sidekiq, execute:

```sh
bundle exec sidekiq
```

## Executando o Servidor

Para iniciar o servidor Rails, execute:

```sh
rails server
```

## Estrutura do Projeto

### Modelos

- `Proponente`
- `Endereco`
- `Telefone`

### Controladores

- `ProponentesController`

### Tarefas Assíncronas

- Sidekiq para atualização de salário

### Views

- Formulários com Bootstrap
- Relatórios com Chartkick

## Rotas

- `GET /proponentes`: Lista de proponentes
- `GET /proponentes/new`: Formulário para novo proponente
- `POST /proponentes`: Criação de proponente
- `GET /proponentes/:id/edit`: Formulário de edição de proponente
- `PATCH /proponentes/:id`: Atualização de proponente
- `DELETE /proponentes/:id`: Exclusão de proponente
- `PATCH /proponentes/:id/atualizar_salario`: Atualização de salário do proponente
- `GET /proponentes/relatorio`: Relatório de proponentes

## Testes

Para executar os testes, use:

```sh
bundle exec rspec
```

## Exemplo de Testes com FactoryBot

### Factory para Proponente

```ruby
FactoryBot.define do
  factory :proponente do
    nome { "Nome Exemplo" }
    cpf { "12345678901" }
    data_de_nascimento { "2000-01-01" }
    salario { 1500.00 }
    inss { 100.00 }
    endereco
  end
end
```

### Factory para Endereco

```ruby
FactoryBot.define do
  factory :endereco do
    logradouro { "Rua Exemplo" }
    numero { "123" }
    bairro { "Bairro Exemplo" }
    cidade { "Cidade Exemplo" }
    estado { "Estado Exemplo" }
    cep { "12345678" }
    proponente
  end
end
```

### Factory para Telefone

```ruby
FactoryBot.define do
  factory :telefone do
    numero { "11987654321" }
    tipo { "pessoal" }
    proponente
  end
end
```

### Testes para Proponente

```ruby
require 'rails_helper'

RSpec.describe Proponente, type: :model do
  it "is valid with valid attributes" do
    proponente = build(:proponente)
    expect(proponente).to be_valid
  end

  it "is not valid without a nome" do
    proponente = build(:proponente, nome: nil)
    expect(proponente).to_not be_valid
  end

  it "is not valid without a cpf" do
    proponente = build(:proponente, cpf: nil)
    expect(proponente).to_not be_valid
  end

  it "is not valid without a data_de_nascimento" do
    proponente = build(:proponente, data_de_nascimento: nil)
    expect(proponente).to_not be_valid
  end

  it "is not valid without a salario" do
    proponente = build(:proponente, salario: nil)
    expect(proponente).to_not be_valid
  end

  it "is not valid without a inss" do
    proponente = build(:proponente, inss: nil)
    expect(proponente).to_not be_valid
  end
end
```

### Testes para Endereco

```ruby
require 'rails_helper'

RSpec.describe Endereco, type: :model do
  it "is valid with valid attributes" do
    endereco = build(:endereco)
    expect(endereco).to be_valid
  end

  it "is not valid without a logradouro" do
    endereco = build(:endereco, logradouro: nil)
    expect(endereco).to_not be_valid
  end

  it "is not valid without a numero" do
    endereco = build(:endereco, numero: nil)
    expect(endereco).to_not be_valid
  end

  it "is not valid without a bairro" do
    endereco = build(:endereco, bairro: nil)
    expect(endereco).to_not be_valid
  end

  it "is not valid without a cidade" do
    endereco = build(:endereco, cidade: nil)
    expect(endereco).to_not be_valid
  end

  it "is not valid without a estado" do
    endereco = build(:endereco, estado: nil)
    expect(endereco).to_not be_valid
  end

  it "is not valid without a cep" do
    endereco = build(:endereco, cep: nil)
    expect(endereco).to_not be_valid
  end
end
```

### Testes para Telefone

```ruby
require 'rails_helper'

RSpec.describe Telefone, type: :model do
  it "is valid with valid attributes" do
    telefone = build(:telefone)
    expect(telefone).to be_valid
  end

  it "is not valid without a numero" do
    telefone = build(:telefone, numero: nil)
    expect(telefone).to_not be_valid
  end

  it "is not valid without a tipo" do
    telefone = build(:telefone, tipo: nil)
    expect(telefone).to_not be_valid
  end
end
```
