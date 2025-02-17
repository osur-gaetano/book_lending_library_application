class CreateBooks < ActiveRecord::Migration[8.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :isbn
      t.string :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :books, :isbn, unique: true
  end
end
