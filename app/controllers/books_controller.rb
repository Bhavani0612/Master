class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end


  def create
    @book = Book.new(book_params)
      if @book.save
        redirect_to(@book)
      else
        render :edit
      end
    end
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to(@book)
    else
      render :edit
    end
  end


  private

  def book_params
    params.require(:book).permit(:user_id, :name, :semester, :language, :edition)
  end
end
