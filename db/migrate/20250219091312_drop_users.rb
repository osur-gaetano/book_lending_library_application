class DropUsers < ActiveRecord::Migration[8.0]
  def change
    remove_reference(:borrowings, :user, index: false)
    drop_table(:users)
  end
end
