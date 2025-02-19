class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def borrow_book
    @book = Book.find(params[:id])
    @borrowing_user = Current.user
    @borrowed_book = Borrowing.build(book_id: @book.id, user_id: @borrowing_user.id, returned_date: Time.current)

    if @book.status == "available"
      @borrowed_book.save
      @book.update(status: "borrowed")
      redirect_to borrowings_path
    else
      flash[:alert] = "Book is not available for borrowing"
      redirect_to books_path
    end
  end

  def return_book
    @book = Book.find(params[:id])
    @book.update(status: "available")
    Borrowing.delete_by(book_id: @book.id)
    redirect_to borrowings_path
  end
end
