class RemoveUserRefFromBooks < ActiveRecord::Migration[8.0]
  def change
    remove_reference(:books, :user, index: false)
  end
end
