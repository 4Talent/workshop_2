class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :company
      t.string :serie

      t.timestamps null: false
    end
  end
end
