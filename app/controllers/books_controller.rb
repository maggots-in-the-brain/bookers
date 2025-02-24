class BooksController < ApplicationController
  def index
    @book = Book.new
    @book2 = Book.all
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book was successfully updated."
      redirect_to book_path(@book.id)
    else
      @book2 = Book.all
      render :index
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:notice] = "Book was successfully updated."
      redirect_to book_path(@book.id)
    else
      render :edit
    end
  end

  def destroy
  book = Book.find(params[:id])
  book.destroy
  redirect_to books_path
  end

  private
  def book_params
  params.require(:book).permit(:title, :body)
  end
end
