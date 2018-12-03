class Api::V1::CommentsController < ApplicationController
  skip_before_action :authorized, only: %i[index]

    def index
      @comments = Comment.all
      render json: @comments, status: :ok
    end

    def create
      @comment = Comment.new(comment_params)
      if @comment.save
        render json: @comment, status: :ok
      else
        render json: {error: "Could not create"}, status: 404
      end
    end

    private
    def comment_params
      params.require(:comment).permit(:text, :user_id, :trail_id)
    end

end
