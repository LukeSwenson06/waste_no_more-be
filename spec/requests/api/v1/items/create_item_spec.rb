require 'rails_helper'
describe "Create an item request", type: :request do
  it "creates an item" do
  user = create(:user)
  params = { name: "Apple", expiration: "2112-12-21", data: {email: user.email} }
  headers = { "Content-Type" => "application/json" }

  item_count = Item.all.length

  post "/api/v1/items", headers: headers, params: JSON.generate(params)

  expect(response).to be_successful
  expect(Item.all.length).to eq(item_count + 1)

  created = JSON.parse(response.body, symbolize_names: true)
  end

  it "does not create item without a name" do
    user = create(:user)
    params = {expiration: "2112-12-21", email: user.email}
    headers = { "Content-Type" => "application/json" }

    item_count = Item.all.length

    post "/api/v1/items", headers: headers, params: JSON.generate(params)

    expect(response).to_not be_successful
    expect(Item.all.length).to eq(item_count)

    created = JSON.parse(response.body, symbolize_names: true)

    expect(created[:error]).to eq("an item must have a name")
  end
  it "does not create item without an experation" do
    user = create(:user)
    params = {name: "bread" , email: user.email}
    headers = { "Content-Type" => "application/json" }

    item_count = Item.all.length

    post "/api/v1/items", headers: headers, params: JSON.generate(params)

    expect(response).to_not be_successful
    expect(Item.all.length).to eq(item_count)

    created = JSON.parse(response.body, symbolize_names: true)

    expect(created[:error]).to eq("an item must have an expiration")
  end
  it "created items belong to a user" do
    user = create(:user)
    params = { name: "Apple", expiration: "2112-12-21", data: {email: user.email} }
    headers = { "Content-Type" => "application/json" }

    post "/api/v1/items", headers: headers, params: JSON.generate(params)

    expect(response).to be_successful
    expect(user.items.count).to eq(1)

    created = JSON.parse(response.body, symbolize_names: true)
  end
end
