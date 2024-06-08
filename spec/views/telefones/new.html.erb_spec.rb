require 'rails_helper'

RSpec.describe "telefones/new", type: :view do
  before(:each) do
    assign(:telefone, Telefone.new(
      numero: "MyString",
      tipo: "MyString",
      proponente: nil
    ))
  end

  it "renders new telefone form" do
    render

    assert_select "form[action=?][method=?]", telefones_path, "post" do

      assert_select "input[name=?]", "telefone[numero]"

      assert_select "input[name=?]", "telefone[tipo]"

      assert_select "input[name=?]", "telefone[proponente_id]"
    end
  end
end
