class CreateBookNames < ActiveRecord::Migration[6.1]
  def change
    create_table :book_names, comment: '聖書の書簡名' do |t|
      t.integer :testament, null: false
      t.string :japanese, null: false
      t.string :english, null: false

      t.timestamps
    end
  end
end
