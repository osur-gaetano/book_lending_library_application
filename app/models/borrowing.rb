class Borrowing < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validates :borrowed_date, :due_date, presence: true
  before_validation :set_due_date, on: :create


  private
  def set_due_date
    self.borrowed_date ||= Time.current
    self.due_date ||= borrowed_date + 2.weeks
  end

end
