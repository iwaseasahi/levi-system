class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.integer :version, null: false
      t.belongs_to :book_name, null: false, foreign_key: true
      t.integer :chapter, null: false
      t.integer :verse, null: false
      t.text :word, null: false

      t.timestamps
    end
  end
end
