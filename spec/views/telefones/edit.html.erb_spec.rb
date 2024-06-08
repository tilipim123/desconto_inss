require 'rails_helper'

RSpec.describe "telefones/edit", type: :view do
  before(:each) do
    @telefone = assign(:telefone, Telefone.create!(
      numero: "MyString",
      tipo: "MyString",
      proponente: nil
    ))
  end

  it "renders the edit telefone form" do
    render

    assert_select "form[action=?][method=?]", telefone_path(@telefone), "post" do

      assert_select "input[name=?]", "telefone[numero]"

      assert_select "input[name=?]", "telefone[tipo]"

      assert_select "input[name=?]", "telefone[proponente_id]"
    end
  end
end
