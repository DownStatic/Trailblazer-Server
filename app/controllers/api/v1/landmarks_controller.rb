class Api::V1::LandmarksController < ApplicationController

  def create
    @landmark = Landmark.new(JSON.parse(landmark_params[:landmark]))
    @landmark.image.attach(landmark_image_params[:image])
    if @landmark.save
      render json: @landmark, status: :ok
    else
      render json: nil, status: 500
    end
  end

  def index
    @landmarks = Landmark.all
    render json: @landmarks, status: :ok
  end

  private
  def landmark_params
    params.permit(:landmark)
  end

  def landmark_image_params
    params.permit(:image)
  end

end
