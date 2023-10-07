require 'rails_helper'

RSpec.describe "Entities", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/entity/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/entity/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /create" do
    it "returns http success" do
      post "/entity/create", params: { entity: { name: "Sample Entity", amount: 100 } }
      expect(response).to have_http_status(302) 
    end
  end
end
