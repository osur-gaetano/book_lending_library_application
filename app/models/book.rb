class Book < ApplicationRecord
  validates :title, :isbn, :status, :user_id, presence: true
  validates :isbn, uniqueness: true
  validates :isbn, length: {is: 13, not_standard: "#ISBN should be {count} digits long"}

  enum status: {available: 'available', borrowed: "borrowed"}
end
