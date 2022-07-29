class Api::V1::ItemsController < ApplicationController
  def create
    item = Item.create!(item_params)
    item.save
    render json: ItemSerializer.new(item), status: :created
  end

  def destroy
    Item.find(params[:id]).delete
  end
end

private
def item_params
  params.permit(:name, :expiration, :user_id)
end
