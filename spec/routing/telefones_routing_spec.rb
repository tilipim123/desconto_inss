require "rails_helper"

RSpec.describe TelefonesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/telefones").to route_to("telefones#index")
    end

    it "routes to #new" do
      expect(get: "/telefones/new").to route_to("telefones#new")
    end

    it "routes to #show" do
      expect(get: "/telefones/1").to route_to("telefones#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/telefones/1/edit").to route_to("telefones#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/telefones").to route_to("telefones#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/telefones/1").to route_to("telefones#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/telefones/1").to route_to("telefones#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/telefones/1").to route_to("telefones#destroy", id: "1")
    end
  end
end
