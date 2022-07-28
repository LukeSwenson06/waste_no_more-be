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
end
