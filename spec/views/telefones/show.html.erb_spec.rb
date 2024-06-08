require 'rails_helper'

RSpec.describe "telefones/show", type: :view do
  before(:each) do
    @telefone = assign(:telefone, Telefone.create!(
      numero: "Numero",
      tipo: "Tipo",
      proponente: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Numero/)
    expect(rendered).to match(/Tipo/)
    expect(rendered).to match(//)
  end
end
