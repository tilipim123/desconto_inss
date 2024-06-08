require 'rails_helper'

RSpec.describe "proponentes/show", type: :view do
  before(:each) do
    @proponente = assign(:proponente, Proponente.create!(
      nome: "Nome",
      cpf: "Cpf",
      salario: "9.99",
      inss: "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Cpf/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
