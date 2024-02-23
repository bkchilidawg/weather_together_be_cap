require "rails_helper"

RSpec.describe "User Show Profile Endpoint" do
  describe "happy path" do
    it "supports with GET request for User Show", :vcr do
      load_test_data
      
      user1 = @user1

      get "/api/v0/users/#{user1.id}", headers: {"CONTENT_TYPE" => "application/json", "ACCEPT" => "application/json"}

      expect(response).to be_successful
      expect(response.status).to eq(200)

      response_data = JSON.parse(response.body, symbolize_names: true)[:data]

      expect(response_data[:type]).to eq("user")
      expect(response_data[:id]).to be_a(String)

      expect(response_data[:attributes][:email]).to eq("user1@gmail.com")
      expect(response_data[:attributes][:username]).to eq("username1")
    end
  end

  
  describe "sad path" do
    it "returns an error if user does not exist", :vcr do
      load_test_data
      
      user10 = @user10

      get "/api/v0/users/#{user10.id}", headers: {"CONTENT_TYPE" => "application/json", "ACCEPT" => "application/json"}

      expect(response).to_not be_successful
      expect(response.status).to eq(404)
    end
  end
end