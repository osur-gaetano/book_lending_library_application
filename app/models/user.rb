class User < ApplicationRecord
  has_many :books

  validates :username, :email, presence: true
  validates :email, uniqueness: true
end
