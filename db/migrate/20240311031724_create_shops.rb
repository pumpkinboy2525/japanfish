class CreateShops < ActiveRecord::Migration[6.1]
  def change
    create_table :shops do |t|
      t.integer :customer_id
      t.integer :prefecture_id
      t.string :shop_name
      t.text :shop_introduction
      t.string :shop_address

      t.timestamps
    end
  end
end
