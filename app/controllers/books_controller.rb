class BooksController < ApplicationController
  def index
  end

  def show
  end

  def new
      @book = Book.new
  end

  def create
      book = Book.new(book_params)
      book.save
      redirect_to '/books/:id' #詳細表示へ
  end

  def edit
  end
end

private
  def book_params
    params.permit(:Title, :Body) #「.require(:book)」が不要だった
  end