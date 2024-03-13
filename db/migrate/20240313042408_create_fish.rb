class CreateFish < ActiveRecord::Migration[6.1]
  def change
    create_table :fish do |t|
      t.string :fish_name
      t.text :fish_introduction

      t.timestamps
    end
  end
end
