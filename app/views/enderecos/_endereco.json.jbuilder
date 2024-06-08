json.extract! endereco, :id, :logradouro, :numero, :bairro, :cidade, :estado, :cep, :proponente_id, :created_at, :updated_at
json.url endereco_url(endereco, format: :json)
