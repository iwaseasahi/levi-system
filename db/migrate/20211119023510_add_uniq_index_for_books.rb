class AddUniqIndexForBooks < ActiveRecord::Migration[6.1]
  def change
    add_index :books, [:version, :book_name_id, :chapter, :verse], unique: true
  end
end

