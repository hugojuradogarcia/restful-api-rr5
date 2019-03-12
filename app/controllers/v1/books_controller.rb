class V1::BooksController < ApplicationController
  def index
    books = Book.all
    render json: books, status: :OK
  end
end