class BorrowingsController < ApplicationController
  def index
    @borrowed_books = Current.user.borrowed_books
  end
end
