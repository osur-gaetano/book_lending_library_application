class Book < ApplicationRecord
  validates :title, :isbn, :status, :author, presence: true
  validates :isbn, uniqueness: true
end
