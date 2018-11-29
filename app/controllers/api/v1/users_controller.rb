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
    @user = User.new(JSON.parse(user_params[:user]))
    @user.coords = JSON.parse(user_params[:coords])
    @user.avatar.attach(user_params[:avatar])
    if @user.save
      render json: @user, status: :ok
    else
      render json: nil, status: 500
    end
  end

  private
  def user_params
    params.permit(:user, :avatar, :coords)
  end

end
