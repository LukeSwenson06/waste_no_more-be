class Api::V1::UsersController < ApplicationController
  def create
    user = User.new(params.permit(:email, :name))
    if user.save
     render json: UserSerializer.new(user), status: :created
    else
     render json: {error: user.errors.full_messages.to_sentence}, status: 400
    end
  end
end
