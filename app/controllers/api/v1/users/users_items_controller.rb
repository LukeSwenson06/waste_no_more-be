class Api::V1::Users::UsersItemsController < ApplicationController
  def index
    user = User.find_by(email: params[:email])
    items = user.items.order('expiration')

    render json: ItemSerializer.new(items)
  end
end
