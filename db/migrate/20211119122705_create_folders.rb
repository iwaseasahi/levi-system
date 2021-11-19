class CreateFolders < ActiveRecord::Migration[6.1]
  def change
    create_table :folders do |t|
      t.string :title, null: false, index: { unique: true }
      t.boolean :sticky, null: false, default: false

      t.timestamps
    end
  end
end
