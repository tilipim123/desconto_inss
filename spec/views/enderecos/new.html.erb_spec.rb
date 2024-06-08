require 'rails_helper'

RSpec.describe "enderecos/new", type: :view do
  before(:each) do
    assign(:endereco, Endereco.new(
      logradouro: "MyString",
      numero: "MyString",
      bairro: "MyString",
      cidade: "MyString",
      estado: "MyString",
      cep: "MyString",
      proponente: nil
    ))
  end

  it "renders new endereco form" do
    render

    assert_select "form[action=?][method=?]", enderecos_path, "post" do

      assert_select "input[name=?]", "endereco[logradouro]"

      assert_select "input[name=?]", "endereco[numero]"

      assert_select "input[name=?]", "endereco[bairro]"

      assert_select "input[name=?]", "endereco[cidade]"

      assert_select "input[name=?]", "endereco[estado]"

      assert_select "input[name=?]", "endereco[cep]"

      assert_select "input[name=?]", "endereco[proponente_id]"
    end
  end
end
