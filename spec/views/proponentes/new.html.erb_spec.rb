require 'rails_helper'

RSpec.describe "proponentes/new", type: :view do
  before(:each) do
    assign(:proponente, Proponente.new(
      nome: "MyString",
      cpf: "MyString",
      salario: "9.99",
      inss: "9.99"
    ))
  end

  it "renders new proponente form" do
    render

    assert_select "form[action=?][method=?]", proponentes_path, "post" do

      assert_select "input[name=?]", "proponente[nome]"

      assert_select "input[name=?]", "proponente[cpf]"

      assert_select "input[name=?]", "proponente[salario]"

      assert_select "input[name=?]", "proponente[inss]"
    end
  end
end
