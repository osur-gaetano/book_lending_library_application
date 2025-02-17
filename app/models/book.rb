class Book < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'

  validates :title, :isbn, :status, :user_id, presence: true
  validates :isbn, uniqueness: true
  validates :isb, length: {is: 13, not_standard: "#ISBN should be {count} digits long"}
end
