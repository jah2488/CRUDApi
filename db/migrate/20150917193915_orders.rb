class Orders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :item_id, null: false
      t.integer :user_id, null: false
      t.integer :quantity, null: false
    end
  end
end
