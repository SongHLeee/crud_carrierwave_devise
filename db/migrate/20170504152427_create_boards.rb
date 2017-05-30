class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :post_title
      t.string :post_editor
      t.text :post_content

      t.timestamps null: false
    end
  end
end
