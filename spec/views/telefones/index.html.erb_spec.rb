require 'rails_helper'

RSpec.describe "telefones/index", type: :view do
  before(:each) do
    assign(:telefones, [
      Telefone.create!(
        numero: "Numero",
        tipo: "Tipo",
        proponente: nil
      ),
      Telefone.create!(
        numero: "Numero",
        tipo: "Tipo",
        proponente: nil
      )
    ])
  end

  it "renders a list of telefones" do
    render
    assert_select "tr>td", text: "Numero".to_s, count: 2
    assert_select "tr>td", text: "Tipo".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
