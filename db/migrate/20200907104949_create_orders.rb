class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :employee_id
      t.integer :menu_id

      t.timestamps
    end
  end
end
