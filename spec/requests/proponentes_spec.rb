require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/proponentes", type: :request do
  
  # Proponente. As you add validations to Proponente, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Proponente.create! valid_attributes
      get proponentes_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      proponente = Proponente.create! valid_attributes
      get proponente_url(proponente)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_proponente_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      proponente = Proponente.create! valid_attributes
      get edit_proponente_url(proponente)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Proponente" do
        expect {
          post proponentes_url, params: { proponente: valid_attributes }
        }.to change(Proponente, :count).by(1)
      end

      it "redirects to the created proponente" do
        post proponentes_url, params: { proponente: valid_attributes }
        expect(response).to redirect_to(proponente_url(Proponente.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Proponente" do
        expect {
          post proponentes_url, params: { proponente: invalid_attributes }
        }.to change(Proponente, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post proponentes_url, params: { proponente: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested proponente" do
        proponente = Proponente.create! valid_attributes
        patch proponente_url(proponente), params: { proponente: new_attributes }
        proponente.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the proponente" do
        proponente = Proponente.create! valid_attributes
        patch proponente_url(proponente), params: { proponente: new_attributes }
        proponente.reload
        expect(response).to redirect_to(proponente_url(proponente))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        proponente = Proponente.create! valid_attributes
        patch proponente_url(proponente), params: { proponente: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested proponente" do
      proponente = Proponente.create! valid_attributes
      expect {
        delete proponente_url(proponente)
      }.to change(Proponente, :count).by(-1)
    end

    it "redirects to the proponentes list" do
      proponente = Proponente.create! valid_attributes
      delete proponente_url(proponente)
      expect(response).to redirect_to(proponentes_url)
    end
  end
end