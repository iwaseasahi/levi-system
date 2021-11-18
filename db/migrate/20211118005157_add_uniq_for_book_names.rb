class AddUniqForBookNames < ActiveRecord::Migration[6.1]
  def change
    change_table :book_names do |t|
      t.index :japanese, unique: true
      t.index :english, unique: true
    end
  end
end
