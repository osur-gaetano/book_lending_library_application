class Book < ApplicationRecord
<<<<<<< HEAD
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'
=======
  belongs_to :author, class_name: 'User', foreign_key: 'user_id', dependent: :destroy
>>>>>>> 089412f (Add validations to book model)

  validates :title, :isbn, :status, :user_id, presence: true
  validates :isbn, uniqueness: true
  validates :isb, length: {is: 13, not_standard: "#ISBN should be {count} digits long"}
<<<<<<< HEAD
=======

  enum status: {Available: 'Available', Borrowed: "Borrowed"}
>>>>>>> 089412f (Add validations to book model)
end
