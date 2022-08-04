class Api::V1::GroceriesController < ApplicationController
    def index
        user = User.find_by(email: params[:email])   
        groceries = Grocery.all.where(user_id: user.id)

        render json: GrocerySerializer.new(groceries)
    end
    
    def create
        if !params.keys.include?("name")
            render json: { "error": "a grocery must have a name"}, status: 400
        else
            user = User.find_by(email: params[:data][:email])
            grocery = Grocery.create!(name: params[:name], user_id: user.id)
            render json: GrocerySerializer.new(grocery), status: :created
        end
        
        
    end

    def destroy        
        if params[:id] != "0"
            Grocery.find(params[:id]).delete
        else
            Grocery.delete_all
        end
    end
end