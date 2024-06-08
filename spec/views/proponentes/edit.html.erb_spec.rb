require 'rails_helper'

RSpec.describe "proponentes/edit", type: :view do
  before(:each) do
    @proponente = assign(:proponente, Proponente.create!(
      nome: "MyString",
      cpf: "MyString",
      salario: "9.99",
      inss: "9.99"
    ))
  end

  it "renders the edit proponente form" do
    render

    assert_select "form[action=?][method=?]", proponente_path(@proponente), "post" do

      assert_select "input[name=?]", "proponente[nome]"

      assert_select "input[name=?]", "proponente[cpf]"

      assert_select "input[name=?]", "proponente[salario]"

      assert_select "input[name=?]", "proponente[inss]"
    end
  end
end
