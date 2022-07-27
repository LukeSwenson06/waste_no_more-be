class Api::V1::ItemsController < ApplicationController
  def create
    item = Item.new(item_params)
    item.save
    render json: ItemSerializer.new(item), status: :created
  end
end
