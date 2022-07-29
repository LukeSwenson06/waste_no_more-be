require 'rails_helper'

RSpec.describe 'Recipe List API' do
  it "sends a list of recipes", :vcr do
  user = User.create(name: "bobby", email: "fakeemail@email.com")
  item1 = user.items.create(name: "cookie", expiration: Date.today)
  item2 = user.items.create(name: "lettuce", expiration: Date.today)

  # get api_v1_recipe_path(params: {id: user.id})
  get api_v1_recipe_path(user)

  response_body = JSON.parse(response.body, symbolize_headers: true)
  expect(response).to have_http_status(200)

  response_body.each do |ingredient|
    expect(ingredient).to have_key("id")
    expect(ingredient["id"]).to be_a(Integer)
    expect(ingredient).to have_key("title")
    expect(ingredient["title"]).to be_a(String)
    expect(ingredient).to have_key("image")
    expect(ingredient["image"]).to be_a(String)
    expect(ingredient).to have_key("usedIngredientCount")
    expect(ingredient["usedIngredientCount"]).to be_a(Integer)
    expect(ingredient).to have_key("missedIngredientCount")
    expect(ingredient["usedIngredientCount"]).to be_a(Integer)


    end
  end
end
