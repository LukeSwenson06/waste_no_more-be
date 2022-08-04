class Api::V1::UsersController < ApplicationController
  def create
    user = User.find_or_create_by(params.permit(:email, :name))
    render json: UserSerializer.new(user), status: :created
  end

  def show
    user = User.find_by(email: params[:email])
    
    if user
      render json: UserSerializer.new(user)
    else
     render json: {"error": "user does not exist"}, status: 400
    end
  end
end
