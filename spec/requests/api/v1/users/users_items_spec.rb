require 'rails_helper'

RSpec.describe 'create a users items endpoint' do
  it 'sends all users items' do
    user1 = create(:user)
    item1 = create(:item, user_id: user1.id)
    item2 = create(:item, user_id: user1.id)

    params = {email: "#{user1.email}"}
    headers = { "Content-Type" => "application/json" }

    get "/api/v1/users/items", headers: headers, params: params

    expect(response).to be_successful

    items = JSON.parse(response.body, symbolize_names: true)

    items[:data].each do |item|
      expect(item).to have_key(:id)
      expect(item[:id]).to be_an(String)

      expect(item[:attributes]).to have_key(:name)
      expect(item[:attributes][:name]).to be_an(String)

      expect(item[:attributes]).to have_key(:expiration)
      expect(item[:attributes][:expiration]).to be_an(String)
    end
  end
  it 'does not return a different users items' do
    user1 = create(:user)
    user2 = create(:user)
    item1 = create(:item, user_id: user1.id)
    item2 = create(:item, user_id: user2.id)

    params = {email: "#{user1.email}"}
    headers = { "Content-Type" => "application/json" }

    get "/api/v1/users/items", headers: headers, params: params

    items = JSON.parse(response.body, symbolize_names: true)

    items[:data].each do |item|
      expect(item[:attributes][:name]).to_not eq(item2[:name])
    end
  end
end
