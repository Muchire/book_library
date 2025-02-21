class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy, :borrow, :return_book]

  def index
    @books = Book.all
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to @book, notice: 'Book added successfully.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @book.update(book_params)
      redirect_to @book, notice: 'Book updated successfully.'
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to books_path, notice: 'Book removed successfully.'
  end

  def borrow
    @book.update(status: 'borrowed')
    LendingHistory.create(book: @book, borrower_name: params[:borrower_name], borrowed_at: Time.now)
    redirect_to @book, notice: 'Book borrowed successfully.'
  end

  def return_book
    history = @book.lending_histories.last
    history.update(returned_at: Time.now) if history && history.returned_at.nil?
    @book.update(status: 'available')
    redirect_to @book, notice: 'Book returned successfully.'
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :author, :status)
  end
end
