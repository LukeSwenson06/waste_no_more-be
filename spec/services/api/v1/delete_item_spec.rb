require 'rails_helper'
describe "Delete an item request", type: :request do
  it "deletes an item" do
  user = create(:user)
  item1 = create(:item, user_id: user.id)
  item2 = create(:item, user_id: user.id)
  headers = { "Content-Type" => "application/json" }

  item_count = Item.all.count

  delete "/api/v1/items/#{item1.id}", headers: headers

  expect(response).to be_successful
  expect(Item.all.count).to eq(item_count - 1)
  end
end
