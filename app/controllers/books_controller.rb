class BooksController < ApplicationController
  def index
    if params[:en_estante]
      @books = Book.where(state: false)
    elsif params[:prestados]
      @books = Book.where(state: true)
    else
      @books = Book.all
    end
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to root_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :state)
  end
end
