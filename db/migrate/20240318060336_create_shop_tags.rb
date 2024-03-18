class CreateShopTags < ActiveRecord::Migration[6.1]
  def change
    create_table :shop_tags do |t|
      t.references :shop, null: false, foreign_key: true
      t.references :prefecture_tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
