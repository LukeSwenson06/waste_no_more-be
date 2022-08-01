class Api::V1::ItemsController < ApplicationController
  def create
    if !params.keys.include?("name")
      render json: { "error": "an item must have a name"}, status: 400
    elsif !params.keys.include?("expiration")
      render json: { "error": "an item must have an expiration"}, status: 400
    else
      user = User.find_by(email: params[:data][:email])
      item = user.items.create!(item_params )
      item.save
      render json: ItemSerializer.new(item), status: :created
    end
  end

  def destroy
    Item.find(params[:id]).delete
  end
end

private
def item_params
  params.permit(:name, :expiration, :user_id)
end
