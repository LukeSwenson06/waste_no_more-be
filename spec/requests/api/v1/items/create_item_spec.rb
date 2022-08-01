require 'rails_helper'
describe "Create an item request", type: :request do
  it "creates an item" do
  user = create(:user)
  params = { name: "Apple", expiration: "2112-12-21", user_id: user.id}
  headers = { "Content-Type" => "application/json" }

  item_count = Item.all.length

  post "/api/v1/items", headers: headers, params: JSON.generate(params)

  expect(response).to be_successful
  expect(Item.all.length).to eq(item_count + 1)

  created = JSON.parse(response.body, symbolize_names: true)
  end

  it "does not create item without all params" do
    user = create(:user)
    params = {expiration: "2112-12-21", user_id: user.id}
    headers = { "Content-Type" => "application/json" }

    item_count = Item.all.length

    post "/api/v1/items", headers: headers, params: JSON.generate(params)

    expect(response).to_not be_successful
    expect(Item.all.length).to eq(item_count)

    created = JSON.parse(response.body, symbolize_names: true)
  end
  it "created items belong to a user" do
    user = create(:user)
    params = { name: "Apple", expiration: "2112-12-21".to_date, user_id: user.id}
    headers = { "Content-Type" => "application/json" }

    post "/api/v1/items", headers: headers, params: JSON.generate(params)

    expect(response).to be_successful
    expect(user.items.count).to eq(1)

    created = JSON.parse(response.body, symbolize_names: true)
  end

  it "creates items with a field that says days til expiration" do
    user = create(:user)
    params = { name: "Apple", expiration: "2022-10-1", user_id: user.id}
    headers = { "Content-Type" => "application/json" }

    item_count = Item.all.length
    allow(Date).to receive(:today).and_return Date.new(2022,07,31)

    post "/api/v1/items", headers: headers, params: JSON.generate(params)

    expect(response).to be_successful
    created = JSON.parse(response.body, symbolize_names: true)
    expect(created[:data][:attributes][:days_til_expiration]).to eq(62)
  end
end
