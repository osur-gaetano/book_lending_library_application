class Add < ActiveRecord::Migration[8.0]
  def change
    add_reference(:borrowings, :user, foreign_key: true, null: false, index: true)
  end
end
