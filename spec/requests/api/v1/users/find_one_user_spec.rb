require 'rails_helper'

RSpec.describe 'find a user endpoint' do
  it 'sends json of a user' do
    user1 = create(:user)

    params = {email: "#{user1.email}"}
    headers = { "Content-Type" => "application/json" }
    get "/api/v1/users", headers: headers, params: params

    expect(response).to be_successful

    created = JSON.parse(response.body, symbolize_names: true)

    expect(created).to be_a Hash
    expect(created[:data]).to be_a Hash
    expect(created[:data][:id]).to be_a String
    expect(created[:data][:attributes]).to be_a Hash
    expect(created[:data][:attributes][:email]).to be_a String
    expect(created[:data][:attributes][:name]).to be_a String
  end
end
