require 'rails_helper'
RSpec.describe "New Party Page" do
  user = create(:user)
  params = { name: "Apple", experation: "2112-12-21"}
  headers = { "Content-Type" => "application/json" }

  item_count = Item.all.length

  post "/api/v1/items", headers: headers, params: JSON.generate(params)

  expect(response).to be_successful
  expect(Item.all.length).to eq(item_count + 1)

  created = JSON.parse(response.body, symbolize_names: true)
end
