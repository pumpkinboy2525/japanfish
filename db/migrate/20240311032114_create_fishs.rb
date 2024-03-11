class CreateFishs < ActiveRecord::Migration[6.1]
  def change
    create_table :fishs do |t|
      t.integer :prefecture_id
      t.string :fish_name
      t.text :fish_introduction

      t.timestamps
    end
  end
end
