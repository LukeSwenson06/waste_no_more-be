require 'rails_helper'

describe "Create an grocery request", type: :request do
    it "finds user grocery items" do
        user = create(:user)
        apple = Grocery.create!(name: 'Apple', user: user)
        pear = Grocery.create!(name: 'Pear', user: user)
        headers = { "Content-Type" => "application/json" }

        grocery_count = Grocery.all.where(user_id: user.id).count

        get "/api/v1/groceries?email=#{user.email}", headers: headers
        
        expect(response).to be_successful
        
        expect(grocery_count).to eq(2)
    end

    it "does not create groceries without a name" do
        user = create(:user)
        params = {email: user.email}
        headers = { "Content-Type" => "application/json" }

        grocery_count = Grocery.all.where(user_id: user.id)

        post "/api/v1/groceries", headers: headers, params: JSON.generate(params)

        expect(response).to_not be_successful

        created = JSON.parse(response.body, symbolize_names: true)

        expect(created[:error]).to eq("a grocery must have a name")
    end

    it "created groceries belong to a user" do
        user = create(:user)
        params = { name: "Apple", data: {email: user.email} }
        headers = { "Content-Type" => "application/json" }

        post "/api/v1/groceries", headers: headers, params: JSON.generate(params)

        expect(response).to be_successful
        
        expect(Grocery.last.user_id).to eq(user.id)
    end
end
