class UsersController < ApplicationController
  def index
    users = User.all
    render json: { users: users }, status: :ok
  end

  def get_posts
    user = User.find(params[:user_id])
    render json: { posts: user.posts }, status: :ok
  end

  def get_posts_body
    user = User.find(params[:user_id])
    render json: { posts: user.posts.select(:body) }, status: :ok
  end

  def get_address
    @user = User.find(params[:user_id])
    render json: { address: @user.address}, status: :ok
  end
end
