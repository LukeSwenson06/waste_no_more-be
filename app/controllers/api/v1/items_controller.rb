class Api::V1::ItemsController < ApplicationController
  def create
    if !params.keys.include?("name")
      render json: { "error": "an item must have a name"}, status: 400
    elsif !params.keys.include?("expiration")
      render json: { "error": "an item must have an expiration"}, status: 400
    else
      item = Item.create!(name: params[:name],
                          expiration: params[:expiration],
                          user_id: params[:user_id],
                          days_til_expiration: (params[:expiration].to_date - Date.today).to_i )
      item.save
      render json: ItemSerializer.new(item), status: :created
    end
  end

end

private
def item_params
  params.permit(:name, :expiration, :user_id)
end
