class CreateBookmarks < ActiveRecord::Migration[6.1]
  def change
    create_table :bookmarks do |t|
      t.belongs_to :folder, null: false, foreign_key: true
      t.string :title, null: false
      t.string :action_name, null: false
      t.string :controller_name, null: false
      t.text :params_value, null: false
      t.integer :position, null: false

      t.timestamps
    end
  end
end
