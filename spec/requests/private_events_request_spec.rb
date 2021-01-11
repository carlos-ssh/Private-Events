require 'rails_helper'

RSpec.describe "PrivateEvents", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/private_events/index"
      expect(response).to have_http_status(:success)
    end
  end

end
