class UsersController < ApplicationController
  def index
    users = User.all
    render json: { users: users }, status: :ok
  end

  def get_posts
    user = User.find(params[:id])
    render json: { books: user.posts }, status: :ok
  end

  def get_posts_name
    user = User.find(params[:id])
    render json: { books: user.posts.select(:body) }, status: :ok
  end
end
