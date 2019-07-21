class CreateItemOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :items_orders do |t|
      t.references :order, foreign_key: true
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
