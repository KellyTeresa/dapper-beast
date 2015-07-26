require 'rails_helper'

RSpec.describe HomesController, type: :controller do

  describe "GET #open" do
    it "returns http success" do
      get :open
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #close" do
    it "returns http success" do
      get :close
      expect(response).to have_http_status(:success)
    end
  end

end
