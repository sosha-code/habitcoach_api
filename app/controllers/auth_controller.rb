# app/controllers/auth_controller.rb
class AuthController < ApplicationController
  def signup
    user = User.create!(signup_params)
    render json: user_json(user), status: :created
  end

  def login
    render json: { error: "Not implemented" }, status: :not_implemented
  end

  private

  def signup_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def user_json(user)
    { id: user.id, name: user.name, email: user.email }
  end
end