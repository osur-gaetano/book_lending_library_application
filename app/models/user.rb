class User < ApplicationRecord
  has_many :borrowings, dependent: :destroy
  has_many :borrowed_books, through: :borrowings, source: :book

  validates :username, :email, presence: true
  validates :email, uniqueness: true
end
