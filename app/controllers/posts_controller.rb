class PostsController < ApplicationController
  before_action :set_post, only: [:show, :update, :destroy]

  def index
    posts = Post.all

    render json: posts
  end

  def show
    render json: @post
  end

  def create
    post = Post.new(post_params)

    if post.save
      render json: post, status: 201
    else
      render json: post.errors, status: 422
    end
  end

  def update
    if @post.update(post_params)
      render json: @post, status: 200
    else
      render json: @post.errors, status: 422
    end
  end

  def destroy
    @post.destroy
    head :ok
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :description)
  end
end
