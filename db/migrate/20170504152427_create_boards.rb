class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :post_title
      t.string :post_editor
      t.text :post_content
      t.integer :user_id
      t.string :image_url

      t.timestamps null: false
    end
  end
end
