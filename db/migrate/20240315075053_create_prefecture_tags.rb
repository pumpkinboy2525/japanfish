class CreatePrefectureTags < ActiveRecord::Migration[6.1]
  def change
    create_table :prefecture_tags do |t|
      t.string :name, null: false

      t.timestamps
    end
    add_index :prefecture_tags, :name, unique:true
  end
end
