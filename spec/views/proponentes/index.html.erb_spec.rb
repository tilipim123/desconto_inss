require 'rails_helper'

RSpec.describe "proponentes/index", type: :view do
  before(:each) do
    assign(:proponentes, [
      Proponente.create!(
        nome: "Nome",
        cpf: "Cpf",
        salario: "9.99",
        inss: "9.99"
      ),
      Proponente.create!(
        nome: "Nome",
        cpf: "Cpf",
        salario: "9.99",
        inss: "9.99"
      )
    ])
  end

  it "renders a list of proponentes" do
    render
    assert_select "tr>td", text: "Nome".to_s, count: 2
    assert_select "tr>td", text: "Cpf".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
  end
end
