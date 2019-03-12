class V1::BooksController < ApplicationController
  def index
    books = Book.all
    render json: books, status: :OK
  end

  def create
    book = Book.new(book_params)

    if book.save
      render json: book, status: :created
    else
      render json: { errors: book.errors }, status: :unprocessable_entity
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :weight, :publisher, :language, :pages, :publication_date)
  end
end