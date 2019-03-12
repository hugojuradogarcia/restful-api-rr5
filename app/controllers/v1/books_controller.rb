class V1::BooksController < ApplicationController
  def index
    books = Book.all
    render json: { books: books }, status: :OK
  end
end