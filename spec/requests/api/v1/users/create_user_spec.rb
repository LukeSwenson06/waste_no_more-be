require 'rails_helper'

RSpec.describe 'create a user endpoint' do
  it 'creates a user' do
    params = { name: "Drew", email: "Drewguy@cygnus.yyz"}
    headers = { "Content-Type" => "application/json" }

    user_count = User.all.length

    post "/api/v1/users", headers: headers, params: JSON.generate(params)

    expect(response).to be_successful
    expect(User.all.length).to eq(user_count + 1)

    created = JSON.parse(response.body, symbolize_names: true)
  end
  it 'does not create a user without all params' do
    params = { email: "Drewguy@cygnus.yyz"}
    headers = { "Content-Type" => "application/json" }

    post "/api/v1/users", headers: headers, params: JSON.generate(params)

    expect(response).to_not be_successful
  end
end
