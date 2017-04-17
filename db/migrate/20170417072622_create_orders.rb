class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :item
      t.string :drink
      t.string :room
      t.string :description
      t.timestamps
    end
  end
end
