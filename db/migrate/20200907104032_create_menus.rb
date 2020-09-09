class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.string :name, null: false
      t.text :introduction, null: false
      t.string :image_id
      t.integer :status, null: false
      t.integer :category_id, null: false

      t.timestamps
    end
  end
end
