require 'rails_helper'

RSpec.describe "enderecos/edit", type: :view do
  before(:each) do
    @endereco = assign(:endereco, Endereco.create!(
      logradouro: "MyString",
      numero: "MyString",
      bairro: "MyString",
      cidade: "MyString",
      estado: "MyString",
      cep: "MyString",
      proponente: nil
    ))
  end

  it "renders the edit endereco form" do
    render

    assert_select "form[action=?][method=?]", endereco_path(@endereco), "post" do

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
