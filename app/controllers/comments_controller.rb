class CommentsController < ApplicationController
  before_action :set_post, only: [:create, :update, :destroy]

  def create
    comment = @post.comments.create(comment_params)

    if comment
      render json: comment, status: :create
    else
      render json: comment.errors, status: :unprocessable_entity
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end
