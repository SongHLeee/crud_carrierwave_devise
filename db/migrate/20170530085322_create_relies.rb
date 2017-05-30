class CreateRelies < ActiveRecord::Migration
  def change
    create_table :relies do |t|
      t.string :editor
      t.text :content
      t.integer :board_id
      
      t.timestamps null: false
    end
  end
end
