class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create,:index]

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

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
      @token = encode_token(user_id: @user.id)
      render json: {user: UserSerializer.new(@user), jwt: @token}, status: :created
    else
      render json: {error: 'Failed to create user.'}, status: :not_acceptable
    end
  end

  private
  def user_params
    params.permit(:user, :avatar, :coords)
  end

end
