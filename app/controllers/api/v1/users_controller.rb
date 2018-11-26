class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users, status: :ok
  end

  def show
    @user = User.find_by(id: params[:id])
    render json: @user, status: :ok
  end

  def create
    byebug
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :ok
    else
      render json: nil, status: 500
    end
  end

  private
  def user_params
    params.require(:user).permit(:name,:password,:age,:proficiency,:avatar, address: [:street_address, :city, :state,:zip_code])
  end

end
